# Exit if any command fails
$ErrorActionPreference = "Stop"



# Static Variables
$RepoURL = "https://gitlab.com" # GitLab Base URL
$CommitMessage = "Backup for Nectar $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$CsvDir = "/Users/chandrasekharreddy.sambaiahghari/Desktop/test"
$PrivateToken = "glpat-RNZRSjf8edh_UrdFTzEX"
$Branch = "test-case-data-dev"
$ProjectID = 68365929



# Navigate to the CSV directory
Set-Location -Path $CsvDir



# Authenticate API Header
$Headers = @{ "PRIVATE-TOKEN" = $PrivateToken }



# Loop through all .csv files
Get-ChildItem -Path . -Filter "*.csv" | ForEach-Object {
    $FilePath = $_.FullName
    $FileName = $_.Name



    # Check if the file exists in the GitLab repository (via GET request)
    $CheckUrl = "$RepoURL/api/v4/projects/$ProjectID/repository/files/$FileName?ref=$Branch"
    $Response = Invoke-RestMethod -Headers $Headers -Uri $CheckUrl -Method Get -ErrorAction SilentlyContinue



    # Rename the file if it already exists in the repository
    $FileName = if ($Response -and $Response.file_path) {
        "new_" + $FileName
    } else {
        $FileName
    }



    # Determine Action
    $Action = if ($Response -and $Response.file_path) { "update" } else { "create" }
    Write-Host "$Action file: $FileName"



    # Commit the file to the repository
    $CommitUrl = "$RepoURL/api/v4/projects/$ProjectID/repository/commits"
    Invoke-RestMethod -Uri $CommitUrl `
        -Method Post `
        -Headers $Headers `
        -Body @{
            "branch" = $Branch
            "commit_message" = $CommitMessage
            "actions[0][action]" = $Action
            "actions[0][file_path]" = $FileName
            "actions[0][content]" = [System.IO.File]::ReadAllText($FilePath)
        }
}



Write-Host "Backup completed successfully for all CSV files on branch: $Branch"
###############################################
$ErrorActionPreference = "Stop"

$RepoURL = "https://gitlab.com"
$CommitMessage = "Backup for Nectar $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$CsvDir = "/Users/chandrasekharreddy.sambaiahghari/Desktop/test"
$PrivateToken = "glpat-RNZRSjf8edh_UrdFTzEX"
$Branch = "test-case-data-dev"
$ProjectID = 68365929

Set-Location -Path $CsvDir
$Headers = @{ "PRIVATE-TOKEN" = $PrivateToken }

Get-ChildItem -Path . -Filter "*.csv" | ForEach-Object {
    $FilePath = $_.FullName
    $FileName = $_.Name
    $EncodedFileName = [System.Net.WebUtility]::UrlEncode($FileName)

    $CheckUrl = "$RepoURL/api/v4/projects/$ProjectID/repository/files/$EncodedFileName?ref=$Branch"
    Write-Host "Checking: $CheckUrl"
    try {
        $Response = Invoke-RestMethod -Headers $Headers -Uri $CheckUrl -Method Get -ErrorAction Stop
    } catch {
        Write-Host "File not found or error: $_"
        $Response = $null
    }

    $FileName = if ($Response -and $Response.file_path) { "new_" + $FileName } else { $FileName }
    $Action = if ($Response -and $Response.file_path) { "update" } else { "create" }
    Write-Host "$Action file: $FileName"

    $CommitUrl = "$RepoURL/api/v4/projects/$ProjectID/repository/commits"
    Invoke-RestMethod -Uri $CommitUrl `
        -Method Post `
        -Headers $Headers `
        -Body @{
            "branch" = $Branch
            "commit_message" = $CommitMessage
            "actions[0][action]" = $Action
            "actions[0][file_path]" = $FileName
            "actions[0][content]" = [System.IO.File]::ReadAllText($FilePath)
        }
}

Write-Host "Backup completed successfully for all CSV files on branch: $Branch"
#######################
$ErrorActionPreference = "Stop"

# Static Variables
$RepoURL = "https://gitlab.com"
$CommitMessage = "Backup for Nectar $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$CsvDir = "/Users/chandrasekharreddy.sambaiahghari/Desktop/test"
$PrivateToken = "glpat-RNZRSjf8edh_UrdFTzEX"
$Branch = "test-case-data-dev"
$ProjectID = 68365929

# Navigate to the CSV directory
Set-Location -Path $CsvDir

# Authenticate API Header
$Headers = @{ "PRIVATE-TOKEN" = $PrivateToken }

# Loop through all .csv files
Get-ChildItem -Path . -Filter "*.csv" | ForEach-Object {
    $FilePath = $_.FullName
    $FileName = $_.Name
    $EncodedFileName = [System.Net.WebUtility]::UrlEncode($FileName)

    # Check if the file exists in the GitLab repository
    $CheckUrl = "$RepoURL/api/v4/projects/$ProjectID/repository/files/$EncodedFileName`?ref=$Branch"
    Write-Host "Checking: $CheckUrl"
    try {
        $Response = Invoke-RestMethod -Headers $Headers -Uri $CheckUrl -Method Get -ErrorAction Stop
    } catch {
        Write-Host "File not found or error: $_"
        $Response = $null
    }

    # Rename the file if it already exists
    $FileName = if ($Response -and $Response.file_path) { "new_" + $FileName } else { $FileName }
    $Action = if ($Response -and $Response.file_path) { "update" } else { "create" }
    Write-Host "$Action file: $FileName"

    # Commit the file to the repository
    $CommitUrl = "$RepoURL/api/v4/projects/$ProjectID/repository/commits"
    $Body = @{
        "branch" = $Branch
        "commit_message" = $CommitMessage
        "actions" = @(
            @{
                "action" = $Action
                "file_path" = $FileName
                "content" = [System.IO.File]::ReadAllText($FilePath)
            }
        )
    }
    Invoke-RestMethod -Uri $CommitUrl `
        -Method Post `
        -Headers $Headers `
        -Body ($Body | ConvertTo-Json) `
        -ContentType "application/json"
}

Write-Host "Backup completed successfully for all CSV files on branch: $Branch"
############################

$ErrorActionPreference = "Stop"

# Static Variables
$RepoURL = "https://gitlab.com"
$CommitMessage = "Backup for Nectar $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$CsvDir = "/Users/chandrasekharreddy.sambaiahghari/Desktop/test"
$PrivateToken = "glpat-RNZRSjf8edh_UrdFTzEX"
$Branch = "test-case-data-dev"
$ProjectID = 68365929

# Navigate to the CSV directory
Set-Location -Path $CsvDir

# Authenticate API Header
$Headers = @{ "PRIVATE-TOKEN" = $PrivateToken }

# Loop through all .csv files
Get-ChildItem -Path . -Filter "*.csv" | ForEach-Object {
    $FilePath = $_.FullName
    $FileName = $_.Name
    $EncodedFileName = [System.Net.WebUtility]::UrlEncode($FileName)

    # Check if the file exists in the GitLab repository
    $CheckUrl = "$RepoURL/api/v4/projects/$ProjectID/repository/files/$EncodedFileName`?ref=$Branch"
    Write-Host "Checking: $CheckUrl"
    try {
        $Response = Invoke-RestMethod -Headers $Headers -Uri $CheckUrl -Method Get -ErrorAction Stop
    } catch {
        Write-Host "File not found or error: $_"
        $Response = $null
    }

    # Rename the file if it exists, but always use 'create' for the new file
    $TargetFileName = if ($Response -and $Response.file_path) { "new_" + $FileName } else { $FileName }
    $Action = "create"  # Always create the target file
    Write-Host "$Action file: $TargetFileName"

    # Commit the file to the repository
    $CommitUrl = "$RepoURL/api/v4/projects/$ProjectID/repository/commits"
    $Body = @{
        "branch" = $Branch
        "commit_message" = $CommitMessage
        "actions" = @(
            @{
                "action" = $Action
                "file_path" = $TargetFileName
                "content" = [System.IO.File]::ReadAllText($FilePath)
            }
        )
    }
    try {
        Invoke-RestMethod -Uri $CommitUrl `
            -Method Post `
            -Headers $Headers `
            -Body ($Body | ConvertTo-Json) `
            -ContentType "application/json" `
            -ErrorAction Stop
    } catch {
        Write-Host "Commit error: $_"
    }
}

Write-Host "Backup completed successfully for all CSV files on branch: $Branch"
