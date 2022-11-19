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
del /S /Q %systemdrive%\Users\%username%\AppData\Local\Temp\crashpad_roblox
del /S /Q %systemdrive%\Users\%username%\AppData\Local\Local\Roblox\ProfilerCaptures\*
cls
@ECHO Done, you can now play Roblox again.
@ECHO Made by Indigoox4
@PAUSE

