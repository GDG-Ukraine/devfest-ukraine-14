@echo none
REM Optimizing JPEG with jpegtran
forfiles /p %1 /s /m "*.jpg" /c "cmd /c  echo processing @path && %~dp0%\jpegtran.exe -optimize -progressive -copy none -outfile @path @path"
REM Optimizing PNG with pngout
forfiles /p %1 /s /m "*.png" /c "cmd /c  echo processing @path && %~dp0%\pngout.exe @path"
REM Optimizing PNG with optipng
rem forfiles /p %1 /s /m "*.png" /c "cmd /c  echo processing @path && %~dp0%\optipng.exe -force -o7 @path"
pause