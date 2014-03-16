@echo off
for /f "delims=" %%a in ('netstat -aon ^| find ":8080"') do @set netstatRslt=%%a
set pid=%netstatRslt:~-5%
taskkill /f /pid %pid%