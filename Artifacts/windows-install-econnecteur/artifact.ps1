pushd C:\ECO\

Invoke-WebRequest -UseBasicParsing -Uri https://builds.vaisonet.com/liveupdate_server/update-econnecteur.exe -OutFile C:\ECO\update-econnecteur.exe

Start-Process update-econnecteur.exe -ArgumentList "/SILENT", "/NOCANCEL", "/NORESTART", "/FORCECLOSEAPPLICATIONS" -Wait

popd

exit 0