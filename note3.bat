@echo off

if [%1]==[] echo Start date required
if [%2]==[] echo End date required

set range="%1_%2"

echo %range%