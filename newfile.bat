@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)


echo %mydate%.md
echo # Work :notebook_with_decorative_cover: for %mydate% >> %mydate%.md

