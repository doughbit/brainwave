@echo off
REM Brainwave — one-click start
REM Launches the server and opens the browser to localhost:3005

cd /d "%~dp0"

REM Start server in this window (keep window open to show logs and to stop with Ctrl+C)
call venv\Scripts\activate.bat

REM Open browser after a short delay (server takes ~1s to start)
start "" cmd /c "timeout /t 2 /nobreak >nul && start http://localhost:3005"

REM Start the server (foreground so closing window = stopping server)
echo.
echo =========================================
echo  Brainwave running at http://localhost:3005
echo  Close this window to stop the server.
echo =========================================
echo.
uvicorn realtime_server:app --host 127.0.0.1 --port 3005
