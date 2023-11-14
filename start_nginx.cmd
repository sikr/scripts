@ECHO OFF
tasklist /FI "IMAGENAME eq nginx.exe" 2>NUL | find /I /N "nginx.exe">NUL
IF NOT "%ERRORLEVEL%"=="0" (
   c:
   cd %HOME%\utils\nginx
   start nginx.exe
   ECHO Nginx started.
) else (
   ECHO Nginx is already running.
)
