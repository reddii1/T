#!/bin/sh

# Exit if any command fails
set -e

# Variables
if [ -z "$REPO_URL" ]; then
  echo "Please set the GitLab repository URL as an environment variable."; exit 1
fi
if [ -z "$CSV_DIR" ]; then
  echo "Please set the directory path for test case data."; exit 1
fi
if [ -z "$NECTAR_BACKUP_PAT" ]; then
  echo "Please set the GitLab token (NECTAR_BACKUP_PAT) as an environment variable."; exit 1
fi

BRANCH="${BRANCH:-test-case-data-dev}"
PROJECT_ID="68365929"
FILE_PATH="test.csv"  # The file to restore

# Navigate to the CSV directory
cd "$CSV_DIR" || { echo "Directory $CSV_DIR not found! Exiting."; exit 1; }

# Fetch the file from GitLab
echo "Restoring $FILE_PATH from GitLab..."
restore_url="$REPO_URL/api/v4/projects/$PROJECT_ID/repository/files/$FILE_PATH/raw?ref=$BRANCH"
response=$(curl --silent --header "PRIVATE-TOKEN: $NECTAR_BACKUP_PAT" --write-out "%{http_code}" "$restore_url")
status_code="${response: -3}"
file_content="${response%???}"

# Check if the fetch was successful
if [ "$status_code" -eq 200 ]; then
  # Save the content to the local file
  echo "Successfully fetched $FILE_PATH. Writing to $CSV_DIR/$FILE_PATH..."
  echo "$file_content" > "$FILE_PATH"
  
  # Verify the file exists and has content
  if [ -s "$FILE_PATH" ]; then
    echo "Restore completed successfully. Content (first 20 chars): $(cat "$FILE_PATH" | head -c 20)..."
  else
    echo "Error: $FILE_PATH was created but is empty!"
    exit 1
  fi
else
  echo "Error: Failed to fetch $FILE_PATH from GitLab. HTTP Status: $status_code"
  echo "Response: $file_content"
  exit 1
fi

echo "Restore of $FILE_PATH from GitLab completed successfully."