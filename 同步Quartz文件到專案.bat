@echo off
cd /d "%~dp0"
echo Running 'npx quartz sync' at %CD%
npx quartz sync
pause
