# Exit on error
$ErrorActionPreference = "Stop"

# Variables
if (-not $env:REPO_URL) {
    Write-Error "Please set the GitLab repository URL as an environment variable (REPO_URL)."
    exit 1
}
if (-not $env:COMMIT_MESSAGE) {
    Write-Error "Please provide a commit message (COMMIT_MESSAGE)."
    exit 1
}
if (-not $env:CSV_DIR) {
    Write-Error "Please set the directory path for test case data (CSV_DIR)."
    exit 1
}
if (-not $env:NECTAR_BACKUP_PAT) {
    Write-Error "Please set the GitLab token (NECTAR_BACKUP_PAT) as an environment variable."
    exit 1
}

# Set branch: command-line arg, environment variable, or default
if ($args.Count -gt 0 -and $args[0]) {
    $BRANCH = $args[0]
} elseif ($env:BRANCH) {
    $BRANCH = $env:BRANCH
} else {
    $BRANCH = "test-case-data-dev"
}

$PROJECT_ID = "68365929"

# Navigate to the CSV directory
try {
    Set-Location -Path $env:CSV_DIR -ErrorAction Stop
} catch {
    Write-Error "Directory $env:CSV_DIR not found! Exiting."
    exit 1
}

# Loop through all .csv files
$csvFiles = Get-ChildItem -Filter "*.csv"
if ($csvFiles.Count -eq 0) {
    Write-Output "No .csv files found in $env:CSV_DIR. Skipping."
} else {
    foreach ($file in $csvFiles) {
        if (-not (Test-Path $file.FullName)) {
            Write-Output "File $file does not exist. Skipping."
            continue
        }

        if ((Get-Item $file.FullName).Length -eq 0) {
            Write-Warning "File $file is empty. Skipping."
            continue
        }

        $FILE_PATH = $file.Name
        Write-Output "Processing: $FILE_PATH for branch: $BRANCH"

        # Read raw content
        $raw_content = Get-Content -Path $file.FullName -Raw
        if (-not $raw_content) {
            Write-Output "Error: Failed to read content from $file. Skipping."
            continue
        }
        Write-Output "Raw content (first 20 chars): $($raw_content.Substring(0, [Math]::Min(20, $raw_content.Length)))..."

        # Check if the file exists in GitLab
        $check_url = "$env:REPO_URL/api/v4/projects/$PROJECT_ID/repository/files/$FILE_PATH`?ref=$BRANCH"
        $headers = @{ "PRIVATE-TOKEN" = $env:NECTAR_BACKUP_PAT }
        try {
            $response = Invoke-RestMethod -Uri $check_url -Headers $headers -Method Get -ErrorAction Stop
            $status_code = 200
        } catch {
            if ($_.Exception.Response.StatusCode.Value__ -eq 404) {
                $status_code = 404
            } else {
                Write-Error "Error checking file existence: $_"
                exit 1
            }
        }
        Write-Output "Checking if $FILE_PATH exists on branch $BRANCH: HTTP Status $status_code"

        # Prepare the API payload
        $payload = @{
            branch = $BRANCH
            commit_message = $env:COMMIT_MESSAGE
            actions = @(
                @{
                    action = if ($status_code -eq 200) { "update" } else { "create" }
                    file_path = $FILE_PATH
                    content = $raw_content
                }
            )
        } | ConvertTo-Json

        # Use POST for both create and update
        $api_url = "$env:REPO_URL/api/v4/projects/$PROJECT_ID/repository/commits"
        if ($status_code -eq 200) {
            Write-Output "Updating existing file: $FILE_PATH on branch: $BRANCH"
        } else {
            Write-Output "Creating new file: $FILE_PATH on branch: $BRANCH"
        }

        try {
            $update_response = Invoke-RestMethod -Uri $api_url -Headers $headers -Method Post -Body $payload -ContentType "application/json" -ErrorAction Stop
            Write-Output "Response: $($update_response | ConvertTo-Json -Depth 10)"
            Write-Output "Successfully $($status_code -eq 200 ? 'updated' : 'created') $FILE_PATH on branch: $BRANCH"
        } catch {
            $error_response = $_.Exception.Response
            $error_message = if ($error_response) { (Invoke-RestMethod -Uri $error_response.RequestMessage.RequestUri -Headers $headers -Method Get -ErrorAction SilentlyContinue) } else { $_.Exception.Message }
            Write-Output "Error $($status_code -eq 200 ? 'updating' : 'creating') $FILE_PATH: $error_message"
        }
    }
}

Write-Output "Backup completed successfully for all CSV files on branch: $BRANCH"