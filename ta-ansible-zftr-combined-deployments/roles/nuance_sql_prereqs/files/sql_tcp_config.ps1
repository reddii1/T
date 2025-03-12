$sql_installed_check="C:\SQL2019\Developer_ENU\x64"

# Get access to SqlWmiManagement DLL on the machine with SQL
# we are on, which is where SQL Server was installed.
# Note: this is installed in the GAC by SQL Server Setup.

[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SqlWmiManagement')

# Instantiate a ManagedComputer object which exposes primitives to control the
# installation of SQL Server on this machine.

$wmi = New-Object 'Microsoft.SqlServer.Management.Smo.Wmi.ManagedComputer' localhost

# Enable the TCP protocol on the default instance. If the instance is named,
# replace MSSQLSERVER with the instance name in the following line.

$tcp = $wmi.ServerInstances['MSSQLSERVER'].ServerProtocols['Tcp']
$tcp.IsEnabled = $true
$tcp.Alter()

# You need to restart SQL Server for the change to persist
# -Force takes care of any dependent services, like SQL Agent.
# Note: if the instance is named, replace MSSQLSERVER with MSSQL$ followed by
# the name of the instance (e.g. MSSQL$MYINSTANCE)

Restart-Service -Name MSSQLSERVER -Force