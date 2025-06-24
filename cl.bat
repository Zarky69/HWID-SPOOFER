@Echo off
:: BatchGotAdmin
:-------------------------------------
REM --> Check for permissions
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting Admin Perms SinEx.cc Cleaner...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin


sc delete vgc

del "C:\Windows\win.ini"
del "C:\Riot Games\VALORANT\live\Manifest_NonUFSFiles_Win64.txt"
del "C:\Users\Public\Desktop\VALORANT.Ink"
del "C:\WINDOWS\Prefetch\VALORANT.EXE-B4BC886D.pf"
del "C:\WINDOWS\Prefetch\VALORANT-WIN64-SHIPPING.EXE-D4EB2DF4.pf"
del "C:\WINDOWS\Prefetch\INSTALL VALORANT.EXE-985FA96C.pf"
del "C:\ProgramData\Riot Games\Metadata\valorant.live\valorant.live.product_settings.yaml"
del "C:\ProgramData\Riot Games\Metadata\valorant.live\valorant.live.ok"
del "C:\ProgramData\Riot Games\Metadata\valorant.live\valorant.live.manifest"
del "C:\ProgramData\Riot Games\Metadata\valorant.live\valorant.live.lockfile"
del "C:\ProgramData\Riot Games\Metadata\valorant.live\valorant.live.ico"
del "C:\ProgramData\Riot Games\Metadata\valorant.live\valorant.live.db"
del "C:\ProgramData\Riot Games\Metadata\valorant.live"
@rd /S /Q "C:\ProgramData\Riot Games\Metadata\valorant.live"
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Riot Games\VALORANT.INK"
del "C:\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat"
del "C:\Riot Games\Riot Client\UX\Plugins\plugin-manifest.json"
del "C:\Riot Games\Riot Client\UX\icudtl.dat"
del "C:\Riot Games\Riot Client\UX\natives_blob.bin"
del "C:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
del "C:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
del "C:\Users\%username%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
del "C:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
del "C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del "C:\Users\%username%\ntuser.ini"
del "C:\Users\%username%\ntuser.dat"
del "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del "D:\Windows\win.ini"
del "D:\Riot Games\VALORANT\live\Manifest_NonUFSFiles_Win64.txt"
del "D:\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat"
del "D:\Riot Games\Riot Client\UX\Plugins\plugin-manifest.json"
del "D:\Riot Games\Riot Client\UX\icudtl.dat"
del "D:\Riot Games\Riot Client\UX\natives_blob.bin"
del "D:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
del "D:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
del "D:\Users\%username%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
del "D:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
del "D:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del "D:\Users\%username%\ntuser.ini"
del "D:\Users\%username%\ntuser.dat"
del "D:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
@rd /S /Q "C:\Windows\Temp"
@rd /S /Q "D:\Windows\Temp"
del "C:\Windows\System32\restore\MachineGuid.txt"
del "D:\Windows\System32\restore\MachineGuid.txt"