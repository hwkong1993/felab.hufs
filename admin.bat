@echo off
rem Starts the local admin server and opens the admin page.
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed. Install it from https://nodejs.org and run this again.
  pause
  exit /b 1
)
rem --open makes the server open the browser once it is listening.
node admin\server.js --open
pause
