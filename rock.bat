@echo off
setlocal enabledelayedexpansion
set /a player_wins=0, computer_wins=0, ties=0

:game
echo.
echo Rock, Paper, Scissors Game
echo.
echo Choose your move:
echo 1. Rock
echo 2. Paper
echo 3. Scissors
echo 4. Quit

set /p choice=Enter your choice (1-4): 

if %choice% equ 4 (
    echo Thanks for playing!
    goto end
)

set /a computer_choice=%RANDOM% %% 3 + 1

if %choice% equ %computer_choice% (
    echo It's a tie!
    set /a ties+=1
) else if %choice% equ 1 (
    if %computer_choice% equ 2 (
        echo Computer wins! Paper covers rock.
        set /a computer_wins+=1
    ) else (
        echo You win! Rock smashes scissors.
        set /a player_wins+=1
    )
) else if %choice% equ 2 (
    if %computer_choice% equ 3 (
        echo Computer wins! Scissors cut paper.
        set /a computer_wins+=1
    ) else (
        echo You win! Paper covers rock.
        set /a player_wins+=1
    )
) else if %choice% equ 3 (
    if %computer_choice% equ 1 (
        echo Computer wins! Rock smashes scissors.
        set /a computer_wins+=1
    ) else (
        echo You win! Scissors cut paper.
        set /a player_wins+=1
    )
)

echo.
echo Score:
echo Player Wins: %player_wins%
echo Computer Wins: %computer_wins%
echo Ties: %ties%
goto game

:end
pause
