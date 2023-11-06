@ECHO OFF
IF "%1" == "" GOTO home
chdir %*
GOTO end
:home
chdir %HOME%
:end
