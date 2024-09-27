@echo off
cd /d %~dp0
git pull

rem auto-git.bat 파일을 제외한 모든 변경사항 추가
git add -A
git reset -- auto-git.bat

git commit -m "Update all files except auto-git.bat"
git push origin main
pause