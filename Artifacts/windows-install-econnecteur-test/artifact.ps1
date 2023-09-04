Invoke-WebRequest -Uri https://builds.vaisonet.com/liveupdate_server/temp_test_v8.exe -OutFile C:\ECO\update-econnecteur.exe

Start-Process C:\ECO\update-econnecteur.exe -ArgumentList "/SILENT", "/NOCANCEL", "/NORESTART", "/FORCECLOSEAPPLICATIONS"