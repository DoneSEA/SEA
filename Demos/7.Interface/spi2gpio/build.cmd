:- Action  : Generate bitstream file then clean all temperary files
:- Author  : tary
:- Date    : 20190620
@echo off
color 2E
setlocal enabledelayedexpansion

set prj=spi2gpio

:- check whether vivado usable
where vivado.bat >nul 2>&1
if %ERRORLEVEL% GTR 0 (
	echo /===============================================\
	echo ^| Please install vivado ^>=2018.03 and then      ^|
	echo ^| put it's bin directory path into SYSTEM PATH  ^|
	echo \===============================================/
	pause
	goto :EOF
)

:- generate bitstream
title BITSTREAM GENERATION
call vivado -mode tcl -source %prj%.tcl
if not exist %prj%.runs\impl_1\%prj%.bit (
	echo /===============================================\
	echo ^| Failed to generate bitstream                  ^|
	echo ^| Check vivado.log for more information         ^|
	echo \===============================================/
	pause
	goto :EOF
)

:- retrive bitstream
copy  /y  %prj%.runs\impl_1\%prj%.bit .

:- clean all temperary files
set seconds=0
echo Wait vivado exited
:rm_retry
rmdir /s /q %prj%.runs >nul 2>&1
if exist %prj%.runs (
        set /a "seconds=!seconds! + 1"
 	echo !seconds! SECS
	call sleep 1
	:- wait vivado exited
	goto rm_retry
)
(
rmdir /s /q %prj%.cache %prj%.hw %prj%.sim %prj%.ip_user_files .Xil
erase vivado.jou *.backup.*
) >nul 2>&1

:- Reserved project file
:- erase %prj%.xpr

echo /===============================================\
echo ^| ------------ BUILDING COMPLETE -------------- ^|
echo ^| project file : %prj%.xpr
echo ^| bit stream   : %prj%.bit
echo ^| building log : vivado.log                    ^|
echo \===============================================/

echo Press any key to close window
pause >nul
goto :EOF


:------------------------ FUNCTIONS ------------------------

:sleep seconds -- waits some seconds before returning
::             -- seconds [in]  - number of seconds to wait
  :$created 20060101 :$changed 20080219
  :$source https://www.dostips.com
	FOR /l %%a in (%~1,-1,1) do (ping -n 2 -w 1 127.0.0.1>NUL)
	EXIT /b
