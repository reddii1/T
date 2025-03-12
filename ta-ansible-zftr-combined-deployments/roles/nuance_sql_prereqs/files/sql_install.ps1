$folderpath="C:\Users\Public\Downloads\SQL"
$filepath_sql="$folderpath\SQL2019-SSEI-Dev.exe"
$sql_installed_check="C:\SQL2019\Developer_ENU\x64"
$sql_server_setup="C:\SQL2019\Developer_ENU\SETUP.exe"

if (!(Test-Path $sql_installed_check)){
    Write-Host "Installing SQL Server.."
    Start-Process -FilePath "$filepath_sql" -ArgumentList '/q /ConfigurationFile="C:\Users\Public\Downloads\SQL\ConfigurationFile.ini" /IAcceptSqlServerLicenseTerms /ENU' -Wait 
}

else { 
    write-host "Located SQL Server install, Nothing to do here..."
}
