# Set file and folder path for SSMS installer .exe
$folderpath="C:\Users\Public\Downloads\SQL"
$filepath="$folderpath\SSMS-Setup-ENU.exe"
$filepath_sql="$folderpath\SQL2019-SSEI-Dev.exe"
$ssms_install_check="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft SQL Server Tools 19"
 
#If SSMS not present, download
if (!(Test-Path $filepath)){
    $URL = "https://download.microsoft.com/download/a/c/a/aca4e29f-6925-4d50-a06b-5576c6ea629f/SSMS-Setup-ENU.exe"
    $clnt = New-Object System.Net.WebClient
    $clnt.DownloadFile($url,$filepath)
}

else { 
    write-host "Located the SQL SSMS Installer binaries, moving on to install..."
}
 
# start the SSMS installer

if (!(Test-Path $ssms_install_check)){
    write-host "Beginning SSMS install..." -nonewline
    $Parms = " /Install /Quiet /Norestart /Logs log.txt"
    $Prms = $Parms.Split(" ")
    & "$filepath" $Prms | Out-Null
    Write-Host "SSMS installation complete"
}

else { 
    write-host "Located SSMS, Nothing to do here.."
}