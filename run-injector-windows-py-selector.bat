@set "id=1-injector"
@title %id%
@set lockfile=_tmp\%id%.lock

rem d:
rem cd d:\net1

echo 0 > %lockfile%
taskkill /IM "py.exe" /F

rem timeout /t 1
echo 1 > %lockfile%

:start

py -2 lib\injector.py

set /p lock= < %lockfile%

if %lock%==0 goto exit

rem pause
goto start

:exit



