param (
    [Parameter(Mandatory = $true)]
    [string]$GitLabToken,

    [Parameter(Mandatory = $true)]
    [string]$NectarVersion,

    [Parameter(Mandatory = $true)]
    [string]$EnvironmentType
)

# Constants
$GitLabApi = "https://gitlab.com/api/v4"
$ProjectId = $env:GITLAB_PROJECT_ID
$CsvDir = $env:CSV_DIR

# Determine target branch
$Branch = switch ($EnvironmentType) {
    "dev" { "test-case-data-dev" }
    "live" { "test-case-data-live" }
    default { 
        Write-Error "Invalid environment type '$EnvironmentType'. Use 'dev' or 'live'."
        exit 1
    }
}

# Commit message
$CommitMessage = "Backup test case data from Nectar CX $NectarVersion"

# Check if CSV directory exists
if (-not (Test-Path $CsvDir)) {
    Write-Error "CSV directory '$CsvDir' does not exist."
    exit 1
}

# Headers for GitLab API
$Headers = @{
    "PRIVATE-TOKEN" = $GitLabToken
    "Content-Type"  = "application/json"
}

# Get all CSV files
$CsvFiles = Get-ChildItem -Path "$CsvDir\*.csv" -File

if ($CsvFiles.Count -eq 0) {
    Write-Output "No CSV files found in '$CsvDir'."
    exit 0
}

foreach ($file in $CsvFiles) {
    $FileName = $file.Name
    $FilePath = $file.FullName

    # Encode file content as base64
    $FileContent = [Convert]::ToBase64String([System.IO.File]::ReadAllBytes($FilePath))

    # API URL for the file
    $ApiUrl = "$GitLabApi/projects/$ProjectId/repository/files/$([uri]::EscapeDataString($FileName))"

    # Check if file exists in the branch
    $FileExists = try {
        Invoke-RestMethod -Uri "$ApiUrl`?ref=$Branch" -Headers $Headers -Method Get -ErrorAction Stop
        $true
    } catch {
        if ($_.Exception.Response.StatusCode -eq 404) { $false } else { throw }
    }

    # Prepare API payload
    $Payload = @{
        branch        = $Branch
        content       = $FileContent
        commit_message = $CommitMessage
    } | ConvertTo-Json

    # Create or update file
    try {
        if ($FileExists) {
            Invoke-RestMethod -Uri $ApiUrl -Headers $Headers -Method Put -Body $Payload -ErrorAction Stop
        } else {
            Invoke-RestMethod -Uri $ApiUrl -Headers $Headers -Method Post -Body $Payload -ErrorAction Stop
        }
        Write-Output "Successfully committed $FileName to $Branch"
    } catch {
        Write-Error "Failed to commit $FileName to $Branch`: $($_.Exception.Message)"
    }
}

Write-Output "Backup process completed."