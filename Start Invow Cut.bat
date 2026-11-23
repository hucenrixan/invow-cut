@echo off
rem Opens Invow Cut in Google Chrome (needed to talk to the cutter over USB).
set "APP=%~dp0InvowCut.html"
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
  start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --app="file:///%APP:\=/%"
  goto :eof
)
if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
  start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --app="file:///%APP:\=/%"
  goto :eof
)
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
  start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --app="file:///%APP:\=/%"
  goto :eof
)
start "" "%APP%"
