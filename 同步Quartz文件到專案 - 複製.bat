@echo off
cd /d %~dp0
echo Running Quartz sync...
npx quartz sync

echo.
echo Checking for git changes...
git add .
git diff --cached --quiet
IF ERRORLEVEL 1 (
    git commit -m "Update after quartz sync"
    git push
    echo Changes pushed to GitHub.
) ELSE (
    echo No changes to commit.
)

pause
