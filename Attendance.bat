@echo off
echo === GitHub Daily Attendance ===

rem Get:date --> mkdir:date

md "%date:~2,2%%date:~5,2%%date:~8,2%"
cd "%date:~2,2%%date:~5,2%%date:~8,2%"
echo "# GitHub-Daily-Attendance" >> README.md
cd ..

rem Git:push --> Origin:main

git add -A
git commit -m "Daily attendance"
git push -u origin main

pause