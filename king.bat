@echo off
cls

setlocal enabledelayedexpansion

rem Define screen dimensions
set "width=80"
set "height=20"

:generate_scene
rem Clear the screen
cls

rem Generate stars
set "scene="
for /l %%i in (1,1,%height%) do (
    set "line="
    for /l %%j in (1,1,%width%) do (
        set /a "rand=!random! %% 100"
        if !rand! lss 5 (
            set "line=!line!*"
        ) else (
            set "line=!line! "
        )
    )
    set "scene=!scene!!line!" 
)

rem Add planets
set /a "rand_x=!random! %% width"
set /a "rand_y=!random! %% height"
set "scene=!scene:~0,%rand_y%!o!scene:~%rand_y%!"

rem Display scene
echo %scene%

rem Delay for animation effect
ping -n 1 127.0.0.1 > nul

goto generate_scene

