@ECHO OFF
tasklist /FI "IMAGENAME eq nginx.exe" 2>NUL | find /I /N "nginx.exe">NUL
IF "%ERRORLEVEL%"=="0" (
   c:
   cd %HOME%\utils\nginx
   nginx.exe -s stop
   ECHO Nginx stopped.
) else (
   ECHO Nginx is not currently running.
)
