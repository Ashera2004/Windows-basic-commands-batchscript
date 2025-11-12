@echo off
:menu
cls
echo ==============================
echo          MAIN MENU
echo ==============================
echo 1. Say Hello
echo 2. Create a File
echo 3. Exit
echo ==============================
set /p choice=Enter your choice (1-3): 

if "%choice%"=="1" goto sayhello
if "%choice%"=="2" goto createfile
if "%choice%"=="3" goto exit
echo Invalid choice! Please try again.
pause
goto menu

:sayhello
echo Hello, World! from siddarth
pause
goto menu

:createfile
echo This is a new file > newfile.txt
echo newfile.txt has been created successfully!
pause
goto menu

:exit
echo Goodbye! Exiting the program...
pause
exit
