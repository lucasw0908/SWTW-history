@echo off
setlocal

:: 提示輸入 commit 訊息
set /p COMMIT_MSG=Input commit MSG (eg. remove bad grammar):

:: 建置 Quartz
echo Sync quartz...
npx quartz sync

:: Git 操作
echo Changes taking effects...
git add .

echo Sending request to Git...
git commit -m "%COMMIT_MSG%"

echo Pushing changes...
git push

echo.
echo ✅Done!
pause

