@echo off
echo === Checking for updates ===

cd /d %~dp0

REM Check Git installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed. Please install from: https://git-scm.com/downloads
    pause
    exit /b 1
)

REM Check .git exists
if not exist ".git" (
    echo [ERROR] No .git directory found. Are you in a Git repo?
    pause
    exit /b 1
)

REM Fetch latest info from origin
git fetch >nul 2>&1

REM Check if current branch is up to date with origin/v4
git diff --quiet HEAD origin/v4
if %errorlevel% equ 0 (
    echo [INFO] You are up to date with origin/v4.
) else (
    echo [INFO] Updating from origin/v4...
    git pull --rebase origin v4
    echo [INFO] Update complete.
)

pause
