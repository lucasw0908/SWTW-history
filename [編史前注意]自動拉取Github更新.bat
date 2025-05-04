@echo off
echo === Updating ===

REM dict checking...
cd /d %~dp0

REM Git exist?
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [Error] No Git, fxxk you: https://git-scm.com/downloads
    pause
    exit /b 1
)

REM git repo/.git exist?
if not exist ".git" (
    echo [Error] Ask Farmertree8 why .git not exist
    pause
    exit /b 1
)

REM Long hand fishing...
git fetch >nul 2>&1

REM CHECKING UPDATE...
git diff --quiet origin/main
if %errorlevel% equ 0 (
    echo [MSG] Newest version, you good
) else (
    echo [UPDATE] Syncing...
    git pull --rebase
    echo [MSG] Synced! good to go.
)

pause
