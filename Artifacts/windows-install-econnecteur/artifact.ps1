Invoke-WebRequest -Uri https://builds.vaisonet.com/liveupdate_server/update-econnecteur.exe -OutFile C:\ECO\update-econnecteur.exe

$exePath = "C:\ECO\update-econnecteur.exe"
$arguments = "/SILENT", "/NOCANCEL", "/NORESTART", "/FORCECLOSEAPPLICATIONS"

Start-Process -FilePath $exePath -ArgumentList $arguments -Wait

$exitCode = $LASTEXITCODE

if ($exitCode -eq 0) {
    Write-Host "La commande s'est exécutée avec succès."
    exit 0
} else {
    Write-Host "Une erreur s'est produite lors de l'exécution de la commande."
    exit 1
}
