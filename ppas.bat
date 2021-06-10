@echo off
SET THEFILE=c:\users\marciu~1\desktop\aulas pascal\aula_01.exe
echo Linking %THEFILE%
d:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o "c:\users\marciu~1\desktop\aulas pascal\aula_01.exe" link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
