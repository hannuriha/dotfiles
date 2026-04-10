@echo off
setlocal enabledelayedexpansion

set "ARGS=%*"

if defined ARGS if "!ARGS:~-3!"==" sh" (
    set "ARGS=!ARGS:~0,-3! bash --login -i -c bash"
)

wsl.exe -e ssh !ARGS!
