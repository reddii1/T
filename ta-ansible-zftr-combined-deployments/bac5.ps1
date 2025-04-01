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

# Loop through all .csv files
Get-ChildItem -Path . -Filter "*.csv" | ForEach-Object {
    $FilePath = $_.Name
    Write-Host "Creating new file: $FilePath"
    $payload = @{
            branch = $Branch
            commit_message = $CommitMessage 
            actions = @(
                @{
                    action = "create" 
                    file_path = $FilePath
                }
            )
        } | ConvertTo-Json

    Invoke-RestMethod -Uri $api_url -Headers @{ "PRIVATE-TOKEN" = $PrivateToken } -Method Post -Body $payload -ContentType "application/json" -ErrorAction Stop   
}

Write-Host "Backup completed successfully for all CSV files on branch: $Branch"
