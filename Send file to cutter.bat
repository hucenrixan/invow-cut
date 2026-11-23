@echo off
rem Drag a .plt cut file (saved from Invow Cut) onto this file to send it to the cutter.
if "%~1"=="" (
  echo Drag a .plt cut file onto this icon to send it to the cutter.
  pause
  goto :eof
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Send-ToCutter.ps1" -File "%~1"
pause

