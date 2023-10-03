#Téléchargement du connecteur et execution de la commande d'installation automatique

Invoke-WebRequest -Uri https://builds.vaisonet.com/liveupdate_server/temp_test_v8.exe -OutFile C:\ECO\update-econnecteur.exe

Start-Process C:\ECO\update-econnecteur.exe -ArgumentList "/SILENT", "/NOCANCEL", "/NORESTART", "/FORCECLOSEAPPLICATIONS"

#on va chercher le script d'update et on va créer le raccourci sur le bureau

$PATH = "C:\ECO\update-EC.ps1"
$PATHSH = Get-ChildItem C:\Users\ -Filter ECT* | Select-Object -ExpandProperty Name
wget https://raw.githubusercontent.com/Vaisonet/azure-devtestlab/master/samples/DevTestLabs/Scripts/UPEC/UPEC.ps1 -OutFile $PATH

$CMD = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$CMDARG = "-ep bypass -file $PATH"

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\Users\$PATHSH\Desktop\Update E-Connecteur.lnk")
$Shortcut.TargetPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$Shortcut.Arguments = "$CMDARG"
$Shortcut.Save()