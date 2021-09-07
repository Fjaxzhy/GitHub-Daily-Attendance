@echo off

echo === GitHub Daily Attendance : Supplement ===

rem check Administrator

net session 1>NUL 2>NUL && (
    goto gotAdmin
) || (
    goto UACPrompt
)
   
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs" 
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs" 
    "%temp%\getadmin.vbs" 
    exit /B  
   
:gotAdmin  
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )  
 
:begin

rem Get:date --> mkdir:date

cd  %~dp0
cd .\Supplement\

set /p targetDate=Target-date: 
set today=%date%

echo ==================
echo Target-date: %targetDate%
echo Today:  %today%
echo ==================

date %targetDate%
md "%date:~2,2%%date:~5,2%%date:~8,2%"
cd "%date:~2,2%%date:~5,2%%date:~8,2%"
echo # GitHub-Daily-Attendance : Supplement >> README.md
cd ..
cd ..

rem Git:push --> Origin:main

git add -A
git commit -m "Daily attendance : Supplement"
git push -u origin main

date %today%

pause