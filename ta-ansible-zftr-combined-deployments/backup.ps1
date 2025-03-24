# backup-test-case-data.ps1
param (
    [Parameter(Mandatory = $true)]
    [string]$GitLabToken,

    [Parameter(Mandatory = $true)]
    [string]$ProjectId,

    [Parameter(Mandatory = $true)]
    [ValidateSet("dev", "live")]
    [string]$Environment,

    [Parameter(Mandatory = $true)]
    [string]$NectarVersion,

    [string]$GitLabApiBase = "https://gitlab.com/api/v4",
    [string]$SourceFolder = "F:\Nectar\CXA\liferay-ce-portal-7.4.3.78-ga78\test-case-data"
)

# Set up logging
$LogFile = "$env:TEMP\backup_log_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt"
function Write-Log {
    param ([string]$Message)
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$Timestamp - $Message" | Out-File -FilePath $LogFile -Append
    Write-Output "$Timestamp - $Message"
}

# Determine branch based on environment
$Branch = if ($Environment -eq "live") { "test-case-data-live" } else { "test-case-data-dev" }
$ZipFile = "$env:TEMP\test-case-data_$NectarVersion.zip"

# Ensure the source folder exists
if (-not (Test-Path $SourceFolder)) {
    Write-Log "Error: Source folder $SourceFolder does not exist."
    exit 1
}

try {
    # Clean up existing ZIP if it exists
    if (Test-Path $ZipFile) {
        Remove-Item $ZipFile -Force
        Write-Log "Removed existing ZIP file: $ZipFile"
    }

    # Compress CSV files
    Write-Log "Compressing CSV files from $SourceFolder..."
    $CsvFiles = Get-ChildItem -Path "$SourceFolder\*.csv" -ErrorAction Stop
    if ($CsvFiles.Count -eq 0) {
        Write-Log "Error: No CSV files found in $SourceFolder."
        exit 1
    }
    Compress-Archive -Path "$SourceFolder\*.csv" -DestinationPath $ZipFile -Force
    Write-Log "Successfully created ZIP file: $ZipFile"

    # Convert ZIP to base64
    Write-Log "Converting ZIP to base64..."
    $ZipBytes = [System.IO.File]::ReadAllBytes($ZipFile)
    $ZipBase64 = [System.Convert]::ToBase64String($ZipBytes)
    Write-Log "Base64 conversion completed."

    # Prepare GitLab upload details
    $FileName = "backups/test-case-data-$NectarVersion.zip"
    $EncodedFilePath = [System.Web.HttpUtility]::UrlEncode($FileName)
    $UploadUrl = "$GitLabApiBase/projects/$ProjectId/repository/files/$EncodedFilePath"
    $Headers = @{ "PRIVATE-TOKEN" = $GitLabToken }
    $Body = @{
        branch        = $Branch
        content       = $ZipBase64
        commit_message = "Backup test-case-data from Nectar version $NectarVersion"
        encoding      = "base64"
    } | ConvertTo-Json -Depth 5

    # Check if file exists in GitLab repository
    $CheckUrl = "$UploadUrl?ref=$Branch"
    Write-Log "Checking if file $FileName exists in branch $Branch..."
    $checkResponse = Invoke-RestMethod -Method GET -Uri $CheckUrl -Headers $Headers -ErrorAction Stop

    if ($checkResponse.file_name -eq $FileName) {
        Write-Log "File $FileName already exists. Using PUT to update..."
        $response = Invoke-RestMethod -Method PUT -Uri $UploadUrl -Headers $Headers -Body $Body -ContentType "application/json" -ErrorAction Stop
        Write-Log "File updated successfully in $Branch."
    } else {
        Write-Log "File $FileName does not exist. Using POST to create..."
        $response = Invoke-RestMethod -Method POST -Uri $UploadUrl -Headers $Headers -Body $Body -ContentType "application/json" -ErrorAction Stop
        Write-Log "File created successfully in $Branch."
    }

} catch {
    Write-Log "Error occurred: $_"
    if ($_.Exception.Response.StatusCode -eq 404) {
        Write-Log "File not found in GitLab. Attempting POST as fallback..."
        try {
            $response = Invoke-RestMethod -Method POST -Uri $UploadUrl -Headers $Headers -Body $Body -ContentType "application/json" -ErrorAction Stop
            Write-Log "Fallback POST successful. File created in $Branch."
        } catch {
            Write-Log "Fallback POST failed: $_"
            exit 1
        }
    } else {
        Write-Log "Unexpected error. Check GitLab API status or token permissions."
        exit 1
    }
} finally {
    # Clean up temporary files
    if (Test-Path $ZipFile) {
        Remove-Item $ZipFile -Force
        Write-Log "Cleaned up temporary ZIP file: $ZipFile"
    }
}

Write-Output "Backup process completed. See $LogFile for details."