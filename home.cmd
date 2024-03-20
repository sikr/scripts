@echo off
IF EXIST %HOME%\conf\windows\.aliases (
  doskey /macrofile=%HOME%\conf\windows\.aliases
)
call "C:\Program Files (x86)\clink\clink-term.bat" --quiet
