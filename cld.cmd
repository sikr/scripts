::
:: cld
::
:: Clear contents of one or more directories
:: but keep the directories itself
::
@echo off

for %%x in (%*) do (
    echo Clearing directory %%~x...
    call rmd.cmd %%~x --silent
    mkdir %%~x
    ls -la %%~x
)
