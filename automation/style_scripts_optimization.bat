@echo none
REM Optimizing style.css to style.min.css
cd ..\css
java -jar %~dp0%\yuicompressor-2.4.8.jar style.css -o style.min.css
REM Optimizing scripts.js to scripts.min.js
cd ..\js
java -jar %~dp0%\yuicompressor-2.4.8.jar scripts.js -o scripts.min.js
pause