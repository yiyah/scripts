@echo off
title ^set word color

rem add "" if have space
call :set_color hello 0a
call :set_color " world" 0e
call :set_color ! 0b
echo.
echo.
call :set_color "    -.-!!" 09
pause > nul


:set_color
if not exist %1 (
    set /p= <nul >%1
    findstr /a:%2  %1* 
    del %1
) else (
    set /p=%1<nul
    goto :eof
)
goto :eof
