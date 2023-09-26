#Téléchargement du connecteur et execution de la commande d'installation automatique

Invoke-WebRequest -Uri https://builds.vaisonet.com/liveupdate_server/update-econnecteur.exe -OutFile C:\ECO\update-econnecteur.exe

Start-Process C:\ECO\update-econnecteur.exe -ArgumentList "/SILENT", "/NOCANCEL", "/NORESTART", "/FORCECLOSEAPPLICATIONS"

#on va chercher le script d'update et on va créer le raccourci sur le bureau

$PATH = '"C:\ECO\update EC.ps1"'

wget https://github.com/Vaisonet/azure-devtestlab/tree/master/samples/DevTestLabs/Scripts/UPEC/UPEC.ps1 -Outfile $PATH

$CMD = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$CMDARG = "-ep bypass -file $PATH"

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Update E-Connecteur.lnk")
$Shortcut.TargetPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$Shortcut.Arguments = "$CMDARG"
$Shortcut.Save()