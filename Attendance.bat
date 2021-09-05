@echo off
echo === GitHub Daily Attendance ===

rem Get:date --> mkdir:date

set today = %date%
md %~dp0\%date%

rem Git:push --> Origin:main

git add -A
git commit -m "Daily attendance"
git push -u origin main

pause