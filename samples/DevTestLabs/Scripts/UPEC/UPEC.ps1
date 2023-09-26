while ($true) {

$choix = Read-Host "Quelle Version ?`n1 - EC Core stable`n2 - EC pr� version"

if ($choix -notmatch '^\d+$') {

write "Veuillez renseigner une valeur."}

else {break}


 }

if ($choix -match 1) {

wget -Uri https://builds.vaisonet.com/liveupdate_server/update-econnecteur.exe -OutFile C:\ECO\update-econnecteur.exe

Start-Process C:\ECO\update-econnecteur.exe -ArgumentList "/SILENT", "/NOCANCEL", "/NORESTART", "/FORCECLOSEAPPLICATIONS"

}

elseif ($choix -match 2) {

wget -Uri https://builds.vaisonet.com/liveupdate_server/temp_test_v8.exe -OutFile C:\ECO\update-econnecteur.exe

Start-Process C:\ECO\update-econnecteur.exe -ArgumentList "/SILENT", "/NOCANCEL", "/NORESTART", "/FORCECLOSEAPPLICATIONS"

}

