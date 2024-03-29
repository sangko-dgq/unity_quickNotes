shell
复制代码
@echo off
chcp 65001

:menu
cls
echo ================= Git管理工具 ================
echo.
echo 1. 添加文件到暂存区
echo.
echo 2. 提交更改到本地仓库
echo.
echo 3. 推送更改到远程仓库
echo.
echo 4. 退出
echo.
echo ======================================================

set /p choice="请选择操作："

if "%choice%"=="1" (
    call :add_files
) else if "%choice%"=="2" (
    call :commit_files
) else if "%choice%"=="3" (
    call :push_files
) else if "%choice%"=="4" (
    exit /b
) else (
    echo 无效选择，请重新输入。
    pause
    goto :menu
)

:add_files
echo.
echo 正在添加文件到暂存区...
cd unity_quickNotes
git add .
echo.
echo 文件已成功添加到暂存区。
pause
goto :menu

:commit_files
echo.
echo 正在提交更改到本地仓库...
cd unity_quickNotes
set /p commit_message="请输入提交消息: "
git commit -m "%commit_message%"
echo.
echo 更改已成功提交到本地仓库。
pause
goto :menu

:push_files
echo.
echo 正在推送更改到远程仓库...
cd unity_quickNotes
git push origin main
echo.
echo 更改已成功推送到远程仓库。
pause
goto :menu