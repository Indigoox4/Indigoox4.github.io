@echo off 
Title Delete Temp Files By Indigoox4
del "%temp%\*.*" /s /q
FOR /d %%p IN ("%temp%\*.*") DO rd "%%p" /s /q
echo Done
pause
