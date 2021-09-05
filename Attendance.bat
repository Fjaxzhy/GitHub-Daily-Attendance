@echo off
echo === GitHub Daily Attendance ===


rem Git:push --> Origin:main

git add -A
git commit -m "Daily attendance"
git push -u origin main

pause