@echo off
:Start
set /p num=Enter a number: 
set /a rem=%num% %% 2

if %rem%==0 (
    echo The number %num% is EVEN.
) else (
    echo The number %num% is ODD.
)

:AskAgain
set /p choice=Do you want to check another number? (Y/N): 
if /i "%choice%"=="Y" goto Start
if /i "%choice%"=="N" goto End
echo Invalid input! Please enter Y or N.
goto AskAgain

:End
echo Thank you for using the Odd-Even Checker, Siddarth A S!
pause
