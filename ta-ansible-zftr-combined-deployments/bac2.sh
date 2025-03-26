#!/bin/sh

# Exit if any command fails
set -e

# Variables
if [ -z "$REPO_URL" ]; then
  echo "Please set the GitLab repository URL as an environment variable."; exit 1
fi
if [ -z "$COMMIT_MESSAGE" ]; then
  echo "Please provide a commit message."; exit 1
fi
if [ -z "$CSV_DIR" ]; then
  echo "Please set the directory path for test case data."; exit 1
fi
if [ -z "$NECTAR_BACKUP_PAT" ]; then
  echo "Please set the GitLab token (NECTAR_BACKUP_PAT) as an environment variable."; exit 1
fi

BRANCH="${BRANCH:-test-case-data-dev}"
PROJECT_ID="68365929"

# Navigate to the CSV directory
cd "$CSV_DIR" || { echo "Directory $CSV_DIR not found! Exiting."; exit 1; }

# Loop through all .csv files
for file in *.csv; do
  if [ ! -f "$file" ]; then
    echo "No .csv files found in $CSV_DIR. Skipping."
    continue
  fi

  if [ ! -s "$file" ]; then
    echo "Warning: $file is empty. Skipping."
    continue
  fi

  FILE_PATH=$(basename "$file")
  echo "Processing: $FILE_PATH"

  # Encode content
  encoded_content=$(base64 -i "$file" | tr -d '\n')
  if [ -z "$encoded_content" ]; then
    echo "Error: Failed to encode $file. Skipping."
    continue
  fi
  echo "Base64 encoded content (first 20 chars): ${encoded_content:0:20}..."

  # Check if the file exists in GitLab
  check_url="$REPO_URL/api/v4/projects/$PROJECT_ID/repository/files/$FILE_PATH?ref=$BRANCH"
  response=$(curl --silent --header "PRIVATE-TOKEN: $NECTAR_BACKUP_PAT" --write-out "%{http_code}" "$check_url")
  status_code="${response: -3}"  # Last 3 chars are the HTTP status code
  response_body="${response%???}"  # Everything except the last 3 chars

  echo "Checking if $FILE_PATH exists: HTTP Status $status_code"

  if [ "$status_code" -eq 200 ]; then
    # File exists, update it
    echo "Updating existing file: $FILE_PATH"
    update_response=$(curl --request PUT \
         --header "PRIVATE-TOKEN: $NECTAR_BACKUP_PAT" \
         --form "branch=$BRANCH" \
         --form "commit_message=$COMMIT_MESSAGE" \
         --form "actions[][action]=update" \
         --form "actions[][file_path]=$FILE_PATH" \
         --form "actions[][content]=$encoded_content" \
         "$REPO_URL/api/v4/projects/$PROJECT_ID/repository/commits")
    echo "Update response: $update_response"
    if echo "$update_response" | grep -q "error"; then
      echo "Error updating $FILE_PATH: $update_response"
    else
      echo "Successfully updated $FILE_PATH"
    fi
  else
    # File does not exist, create it
    echo "Creating new file: $FILE_PATH"
    create_response=$(curl --request POST \
         --header "PRIVATE-TOKEN: $NECTAR_BACKUP_PAT" \
         --form "branch=$BRANCH" \
         --form "commit_message=$COMMIT_MESSAGE" \
         --form "actions[][action]=create" \
         --form "actions[][file_path]=$FILE_PATH" \
         --form "actions[][content]=$encoded_content" \
         "$REPO_URL/api/v4/projects/$PROJECT_ID/repository/commits")
    echo "Create response: $create_response"
    if echo "$create_response" | grep -q "error"; then
      echo "Error creating $FILE_PATH: $create_response"
    else
      echo "Successfully created $FILE_PATH"
    fi
  fi
done

echo "Backup completed successfully for all CSV files on branch: $BRANCH"