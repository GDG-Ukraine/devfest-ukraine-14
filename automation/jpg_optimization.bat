@echo none
REM Optimizing JPEG with jpegtran
forfiles /p %1 /s /m "*.jpg" /c "cmd /c  echo processing @path && %~dp0%\jpegtran.exe -optimize -progressive -copy none -outfile @path @path"
pause