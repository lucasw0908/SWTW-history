@echo off
echo === Check ===

REM Checking Git exist...
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [Error] Install Git you dumb: https://git-scm.com/downloads
    pause
    exit /b 1
) else (
    echo [OK] Git installed
)

REM Checking Node.js exist...
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [Error] Install Node.js pls: https://nodejs.org/
    pause
    exit /b 1
) else (
    echo [OK] Node.js installes
)

echo.
echo You good good.
pause
