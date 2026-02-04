@echo off
chcp 65001 >nul

REM 确保目标目录存在
if not exist "%userprofile%\.copilot" mkdir "%userprofile%\.copilot"
if not exist "%userprofile%\.claude" mkdir "%userprofile%\.claude"

REM 创建符号链接
mklink /j "%userprofile%\.copilot\skills" "%~dp0skills"
mklink /j "%userprofile%\.claude\skills" "%~dp0skills"

echo 符号链接创建完成！
pause
