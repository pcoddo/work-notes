@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)

echo %mydate%.md
echo # Work notes for %mydate% >> %mydate%.md
echo ### To do :green_book: >> %mydate%.md
echo * >> %mydate%.md
echo * >> %mydate%.md
echo * >> %mydate%.md
echo ### In Progress :ledger: >> %mydate%.md
echo * >> %mydate%.md
echo * >> %mydate%.md
echo * >> %mydate%.md
echo ### Completed :closed_book: >> %mydate%.md
echo - [ ] . >> %mydate%.md
echo - [ ] . >> %mydate%.md
echo - [ ] . >> %mydate%.md


