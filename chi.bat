@echo off
color 0A
mode 1000

echo       ___====-_  _-====___
echo    _--^^^#####//      \#####^^^--_
echo   _-^########// (    ) \########^-_
echo  -############\  |\^^/|  /############-
echo -##############\| (o)(o) |##############-
echo^            ##############^
echo^             @@@@@@@@@@
echo^     _/        \  /        \_
echo^  ^|  \_________\/_________/  |^
echo^ ^ \__ |        |  |        | __/^
echo^     ^^^^        ^^^^

:loop
set "line="
setlocal enabledelayedexpansion
for /l %%i in (1,1,20) do (
    set /a "rand=!random! %% 2"
    if !rand! equ 0 (
        set "line=!line!0"
    ) else (
        set /a "rand_char=!random! %% 26 + 65"
        for %%C in (!rand_char!) do (
            set "line=!line!!=%%C"
        )
    )
)
cls
echo       ___====-_  _-====___
echo    _--^^^#####//      \#####^^^--_
echo   _-^########// (    ) \########^-_
echo  -############\  |\^^/|  /############-
echo -##############\| (o)(o) |##############-
echo^            ##############^
echo^             @@@@@@@@@@
echo^     _/        \  /        \_
echo^  ^|  \_________\/_________/  |^
echo^ ^ \__ |        |  |        | __/^
echo^     ^^^^        ^^^^
echo %line%
ping -n 1 127.0.0.1 > nul
goto loop
