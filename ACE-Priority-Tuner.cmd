@echo off
chcp 65001 > nul
cls

echo.
echo 程序来源:https://github.com/BlazeSnow/ACE-Priority-Tuner
echo Copyright (c) 2025 BlazeSnow. 保留所有权利.
echo.

:: 管理员权限检测
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo 错误:此脚本需要管理员权限才能运行.
    echo 请右键此文件,选择"以管理员身份运行".
    echo.
    pause
    exit /b 1
)

echo 正在添加注册表以限制优先级...

:: 定义基础注册表路径
set "BASE_REG_PATH=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options"

:: 定义所有需要修改的应用程序名称
set "APPS=ACE-Tray.exe SGuardUpdate64.exe SGuardSvc64.exe SGuard64.exe ACE-Service64.exe"

:: 循环遍历每个应用程序
for %%A in (%APPS%) do (
    echo.
    echo 正在为 %%A 添加注册表项...

    :: CpuPriorityClass
    reg add "%BASE_REG_PATH%\%%A\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 0 /f

    :: IoPriority
    reg add "%BASE_REG_PATH%\%%A\PerfOptions" /v "IoPriority" /t REG_DWORD /d 0 /f

    :: PagePriority
    reg add "%BASE_REG_PATH%\%%A\PerfOptions" /v "PagePriority" /t REG_DWORD /d 0 /f
)

echo.
echo 所有注册表添加完毕.
echo.
pause
exit
