 # Exit if any command fails
$ErrorActionPreference = "Stop"

# Static Variables
$api_url = "https://gitlab.com/api/v4/projects/43328313/repository/commits"
$CommitMessage = "backup $(Get-Date -Format 'yyyy-MM-dd') version 2024.2.1 [skip ci]"
$CsvDir = "F:\Nectar\CXA\liferay-ce-portal-7.4.3.78-ga78\test-case-data"
$PrivateToken = "glpat-xyxJz-ktxXkPjJzo3bAy" 
$Branch = "test-case-data-dev" 

# Navigate to the CSV directory
Set-Location -Path $CsvDir

# Build a list of actions (one for each .csv file)
$actions = @()

Get-ChildItem -Path . -Filter "*.csv" | ForEach-Object {
    $filePath = $_.Name
    $fileContent = Get-Content -Raw -Path $_.FullName
    Write-Host "Adding file: $filePath"

    $actions += @{
        action     = "update"
        file_path = $filePath
        content    = $fileContent
    }
}

# Build final payload with all actions
$payload = @{
    branch         = $Branch
    commit_message = $CommitMessage
    actions        = $actions
} | ConvertTo-Json -Depth 10

# Send single commit request
Invoke-RestMethod -Uri $api_url `
    -Headers @{ "PRIVATE-TOKEN" = $privateToken } `
    -Method Post `
    -Body $payload `
    -ContentType "application/json" `
    -ErrorAction Stop

Write-Host "Backup completed successfully for all CSV files in a single commit on branch: $Branch" 
