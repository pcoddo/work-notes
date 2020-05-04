@echo off

if [%1]==[] goto err

for /f "tokens=1,2 delims=_" %%a in ('powershell get-date -UFormat "%%Y_%%B"') do set "mydate=%%b_%%a_Week_%1"
for /f "tokens=1,2 delims=_" %%a in ('powershell get-date -UFormat "%%Y_%%B"') do set "mydate2=%%b %%a (Week %1)"
echo %mydate%.md
echo ## Summary for *%mydate2%* >> %mydate%.md
echo ### To do :green_book: >> %mydate%.md
echo - [ ] >> %mydate%.md
echo - [ ] >> %mydate%.md
echo - [ ] >> %mydate%.md
echo ### In Progress :ledger: >> %mydate%.md
echo - [ ] >> %mydate%.md
echo - [ ] >> %mydate%.md
echo - [ ] >> %mydate%.md
echo ### Completed :closed_book: >> %mydate%.md
echo - [x] >> %mydate%.md
exit /B 1

:err
echo Enter Week Number
