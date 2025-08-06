@echo off
echo Starting ShimanskiiAdminPro Development Environment...
echo.

echo Step 1: Starting React development server...
start "React Dev Server" cmd /k "npm start"

echo Step 2: Waiting for React server to be ready...
timeout /t 15 /nobreak > nul

echo Step 3: Starting Electron application...
start "Electron App" cmd /k "electron ."

echo.
echo Development environment started!
echo React server: http://localhost:3000
echo Electron app should open automatically
echo.
echo Press any key to close this window...
pause > nul
