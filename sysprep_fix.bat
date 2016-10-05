@echo off

REM ***Reboots are neccesary***
reg add "HKLM\SYSTEM\Setup\Status\SysprepStatus" /v CleanupState /t REG_DWORD /d 00000002 /F

reg add "HKLM\SYSTEM\Setup\Status\SysprepStatus" /v GeneralizationState /t REG_DWORD /d 00000007 /F

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v SkipRearm /t REG_DWORD /d 00000001 /F

msdtc -uninstall
REM shutdown /r /t 003
timeout 120

msdtc -install
REM shutdown /r /t 003
timeout 120

rmdir /Q /S "C:\Windows\System32\Sysprep\Panther"

ECHO Beginning Sysprep. The system will reboot when complete.

"C:\Windows\System32\Sysprep\Sysprep.exe" /oobe /generalize /reboot