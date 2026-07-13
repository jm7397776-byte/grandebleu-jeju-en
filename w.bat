@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
  powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
  exit /b
)
echo [1/4] firewall rules...
netsh advfirewall firewall add rule name="WinAgent8756" dir=in action=allow protocol=TCP localport=8756
netsh advfirewall firewall add rule name="WinAgentPythonw" dir=in action=allow program="C:\Users\user\AppData\Local\Programs\Python\Python312\pythonw.exe"
netsh advfirewall firewall add rule name="WinAgentPython" dir=in action=allow program="C:\Users\user\AppData\Local\Programs\Python\Python312\python.exe"
echo [2/4] autostart task...
schtasks /Create /TN WinAgentAutoStart /TR "\"C:\Users\user\AppData\Local\Programs\Python\Python312\pythonw.exe\" \"C:\Users\user\win_agent\win_agent.py\"" /SC ONLOGON /RL HIGHEST /F
echo [3/4] restart agent...
taskkill /f /fi "IMAGENAME eq pythonw.exe" >nul 2>&1
start "" "C:\Users\user\AppData\Local\Programs\Python\Python312\pythonw.exe" "C:\Users\user\win_agent\win_agent.py"
echo [4/4] verify - need LISTENING below
timeout /t 5 /nobreak >nul
netstat -ano | findstr 8756
echo.
echo DONE - close this window
pause
