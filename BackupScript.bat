@echo off
mkdir "%userprofile%\Desktop\DocBackup"
copy "%userprofile%\Documents\*.docx" "%userprofile%\Desktop\DocBackup"
echo Backup completed successfully!
pause
