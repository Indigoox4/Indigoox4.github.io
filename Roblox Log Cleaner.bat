::YOU SHOULD RUN THIS FILE AS ADMINISTRATOR FOR IT TO WORK PROPERLY.
@ECHO OFF
goto check_Permissions

:check_Permissions

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Administrative permissions confirmed. Press any key to start the cleaner.
    ) else (
        echo Please reopen the file as administrator for this to work properly.
	PAUSE
	EXIT /B 1
    )

    pause >nul
taskkill /IM RobloxPlayerLauncher.exe /F
taskkill /IM RobloxPlayerBeta.exe /F
taskkill /IM RobloxStudioLauncherBeta.exe /F
del /Q %systemdrive%\Users\%username%\AppData\LocalLow\rbxcsettings.rbx
del /Q %systemdrive%\Users\%username%\AppData\Local\Roblox\GlobalBasicSettings_13.xml
del /Q %systemdrive%\Users\%username%\AppData\Local\Roblox\GlobalSettings_13.xml
del /Q %systemdrive%\Users\%username%\AppData\Local\Roblox\RobloxCookies.dat
del /Q %systemdrive%\Users\%username%\AppData\Local\Roblox\frm.cfg
del /Q %systemdrive%\Users\%username%\AppData\Local\Roblox\AnalysticsSettings.xml
del /Q %systemdrive%\Users\%username%\AppData\Local\Roblox\LocalStorage\*
del /S /Q %systemdrive%\Users\%username%\AppData\Local\Roblox\logs\*
del /Q %temp%\RBX-*.log
del /S /Q %systemdrive%\Windows\Temp\*
del /S /Q %systemdrive%\Users\%username%\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*
del /S /Q %systemdrive%\Users\%username%\AppData\Local\CrashDumps\*
del /S /Q %systemdrive%\Users\%username%\AppData\Local\Temp\crashpad_roblox
del /S /Q %systemdrive%\Users\%username%\AppData\Local\Local\Roblox\ProfilerCaptures\*
cls
@ECHO Done, you can now play Roblox again.
@ECHO Made by haxcollector
@PAUSE

::Credits to: stackoverflow.com/questions/4051883/batch-script-how-to-check-for-admin-rights#11995662 for the admin rights checking.
::Feel free to edit this if you know what you are doing