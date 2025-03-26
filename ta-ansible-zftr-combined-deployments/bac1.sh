#!/bin/sh

# Exit if any command fails
set -e

# Variables (Set dynamically or passed as environment variables)
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

BRANCH="${BRANCH:-test-case-data-dev}" # Default branch if not set
PROJECT_ID="68365929" # Updated to match your output

# Navigate to the CSV directory
cd "$CSV_DIR" || { echo "Directory $CSV_DIR not found! Exiting."; exit 1; }

# Loop through all .csv files
for file in *.csv; do
  # Skip if no .csv files are found
  if [ ! -f "$file" ]; then
    echo "No .csv files found in $CSV_DIR. Skipping."
    continue
  fi

  # Check if the file is empty
  if [ ! -s "$file" ]; then
    echo "Warning: $file is empty. Skipping."
    continue
  fi

  FILE_PATH=$(basename "$file")
  echo "Processing: $FILE_PATH"

  # Debug: Show base64 output
  encoded_content=$(base64 -i "$file" | tr -d '\n')
  if [ -z "$encoded_content" ]; then
    echo "Error: Failed to encode $file. Skipping."
    continue
  fi
  echo "Base64 encoded content (first 20 chars): ${encoded_content:0:20}..."

  # Check if the file exists in the GitLab repository
  response=$(curl --silent --header "PRIVATE-TOKEN: $NECTAR_BACKUP_PAT" \
                  "$REPO_URL/api/v4/projects/$PROJECT_ID/repository/files/$FILE_PATH?ref=$BRANCH")

  if echo "$response" | grep -q "file_path"; then
    # File exists, use PUT to update
    echo "Updating existing file: $FILE_PATH"
    curl --request PUT \
         --header "PRIVATE-TOKEN: $NECTAR_BACKUP_PAT" \
         --form "branch=$BRANCH" \
         --form "commit_message=$COMMIT_MESSAGE" \
         --form "actions[][action]=update" \
         --form "actions[][file_path]=$FILE_PATH" \
         --form "actions[][content]=$encoded_content" \
         "$REPO_URL/api/v4/projects/$PROJECT_ID/repository/commits"
  else
    # File does not exist, use POST to create
    echo "Creating new file: $FILE_PATH"
    curl --request POST \
         --header "PRIVATE-TOKEN: $NECTAR_BACKUP_PAT" \
         --form "branch=$BRANCH" \
         --form "commit_message=$COMMIT_MESSAGE" \
         --form "actions[][action]=create" \
         --form "actions[][file_path]=$FILE_PATH" \
         --form "actions[][content]=$encoded_content" \
         "$REPO_URL/api/v4/projects/$PROJECT_ID/repository/commits"
  fi
done

echo "Backup completed successfully for all CSV files on branch: $BRANCH"


curl --request POST \
     --header "PRIVATE-TOKEN: your-token-here" \
     --form "branch=test-case-data-dev" \
     --form "commit_message=Test upload" \
     --form "actions[][action]=create" \
     --form "actions[][file_path]=test.csv" \
     --form "actions[][content]=$(base64 -i test.csv | tr -d '\n')" \
     "https://gitlab.com/api/v4/projects/68365929/repository/commits"
