::
:: rmd
::
:: Remove one ore more directories
::
@echo off
setlocal enabledelayedexpansion
set silent=0

for %%x in (%*) do (
  if "%%~x" == "--silent" (
    set silent=1
  )
)
for %%x in (%*) do (
  if not "%%~x" == "--silent" (
    if not exist %%~x (
      echo *** Directory "%%~x" dosen't exist.
      goto error_end
    )
    if not "%silent%" == "1" (
      echo Deleting directory %%~x...
    )
    del /f /s /q %%~x 1>nul
    rd /s /q %%~x 1>nul
  )
)

:error_end
