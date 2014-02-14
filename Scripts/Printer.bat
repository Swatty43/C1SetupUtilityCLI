@echo off
color 79
mode con cols=80 lines=40 >nul
title Printer Installer
:Home
echo.
echo                           C1 Setup Printer Installer!
echo.
echo                      Please Choose Printer Manufacturer:
echo                      ===================================
echo                      ###  1) HP      2) Canon       ###
echo                      ###  3) Ricoh   4) Sharp        ###
echo	                     ###  5) Xerox   6) Kill PrnSpl  ###
echo                      ###  7)         8) Start PrnSpl ###
echo                      ===================================
echo.
echo.                          I: Installer    Q: Exit
echo.
SET /P choice=Enter Selection: 
echo.
echo.
if "%choice%"=="" GOTO Error
if %choice% ==1 GOTO One
if %choice% ==2 GOTO Two
if %choice% ==3 GOTO Three
if %choice% ==4 GOTO Four
if %choice% ==5 GOTO Five
if %choice% ==6 GOTO Six
if %choice% ==7 GOTO Seven
if /I %choice% ==I GOTO I
if /I %choice% ==Q GOTO Q

:Error
echo.
echo Please make a valid choice!!
pause
CLS
GOTO home


:One
echo HP Printer Selected.
echo.
SET /P name=Enter Printer Name: 
echo.
SET /P IP=Enter IP: 
echo.
echo You entered: %name% for printer name and %IP% for IP address.
echo.
SET /P choice=Is this correct? 

if "%choice%"=="" GOTO X
if /I %choice% ==Y GOTO Y
if /I %choice% ==N GOTO N

	:Y
	md C:\Software\Printers
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/PrinterDrivers/HPPCL6.zip -O "C:\Software\Printers\HPPCL6.zip"
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\7za.exe" X "C:\Software\Printers\HPPCL6.zip" -oC:\Software\Printers
	del "C:\Software\Printers\HPPCL6.zip"
	Cscript "C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %IP% -h %IP%
	rundll32 printui.dll,PrintUIEntry /if /b "%name%" /f "C:\Software\Printers\HPPCL6\hpcu155u.inf" /r "%IP%" /m "HP Universal Printing PCL 6"
	pause
	CLS
	GOTO Home
	
	:N
	echo.
	echo Try again.
	pause
	CLS
	GOTO One
	
:Two
echo Canon Printer Selected.
echo.
SET /P name=Enter Printer Name: 
echo.
SET /P IP=Enter IP: 
echo.
echo You entered: %name% for printer name and %IP% for IP address.
echo.
SET /P choice=Is this correct? 
if "%choice%"=="" GOTO X
if /I %choice% ==Y GOTO Y
if /I %choice% ==N GOTO N

	:Y
	md C:\Software\Printers
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/PrinterDrivers/CanonPCL6.zip -O "C:\Software\Printers\CanonPCL6.zip"
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\7za.exe" X "C:\Software\Printers\CanonPCL6.zip" -oC:\Software\Printers
	del "C:\Software\Printers\CanonPCL6.zip"
	Cscript "C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %IP% -h %IP%
	rundll32.exe printui.dll,PrintUIEntry /if /b "%name%" /f "C:\Software\Printers\CanonPCL6\Driver\pcl6\CNP60UA64.INF" /r "%IP%" /m "Canon Generic PCL6 Driver" 
	pause
	CLS
	GOTO Home
	
	:N
	echo.
	echo Try again.
	pause
	CLS
	GOTO Two

:Three
echo Ricoh Printer Selected.
echo.
SET /P name=Enter Printer Name: 
echo.
SET /P IP=Enter IP: 
echo.
echo You entered: %name% for printer name and %IP% for IP address.
echo.
SET /P choice=Is this correct? 
if "%choice%"=="" GOTO X
if /I %choice% ==Y GOTO Y
if /I %choice% ==N GOTO N

	:Y
	md C:\Software\Printers
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/PrinterDrivers/RicohPCL6.zip -O "C:\Software\Printers\RicohPCL6.zip"
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\7za.exe" X "C:\Software\Printers\RicohPCL6.zip" -oC:\Software\Printers
	del "C:\Software\Printers\RicohPCL6.zip"
	Cscript "C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %IP% -h %IP%
	rundll32.exe printui.dll,PrintUIEntry /if /b "%name%" /f "C:\Software\Printers\RicohPCL6\oemsetup.inf" /r "%IP%" /m "Ricoh"
	pause
	CLS
	GOTO Home
	
	:N
	echo.
	echo Try again.
	pause
	CLS
	GOTO Three
	
:Four
echo Sharp Printer Selected.
echo.
SET /P name=Enter Printer Name: 
echo.
SET /P IP=Enter IP: 
echo.
echo You entered: %name% for printer name and %IP% for IP address.
echo.
SET /P choice=Is this correct? 

if "%choice%"=="" GOTO X
if /I %choice% ==Y GOTO Y
if /I %choice% ==N GOTO N

	:Y
	md C:\Software\Printers
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/PrinterDrivers/SharpPCL6.zip -O "C:\Software\Printers\SharpPCL6.zip"
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\7za.exe" X "C:\Software\Printers\SharpPCL6.zip" -oC:\Software\Printers
	del "C:\Software\Printers\SharpPCL6.zip"
	Cscript "C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %IP% -h %IP%
	rundll32 printui.dll,PrintUIEntry /if /b "%name%" /f "C:\Software\Printers\SharpPCL6\sfweMENU.inf" /r "%IP%" /m "Sharp"
	pause
	CLS
	GOTO Home
	
	:N
	echo.
	echo Try again.
	pause
	CLS
	GOTO One
	
	
:Five
echo Xerox Printer Selected.
echo.
SET /P name=Enter Printer Name: 
echo.
SET /P IP=Enter IP: 
echo.
echo You entered: %name% for printer name and %IP% for IP address.
echo.
SET /P choice=Is this correct? 

if "%choice%"=="" GOTO X
if /I %choice% ==Y GOTO Y
if /I %choice% ==N GOTO N

	:Y
	md C:\Software\Printers
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/PrinterDrivers/XeroxPCL6.zip -O "C:\Software\Printers\XeroxPCL6.zip"
	"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\7za.exe" X "C:\Software\Printers\XeroxPCL6.zip" -oC:\Software\Printers
	del "C:\Software\Printers\XeroxPCL6.zip"
	Cscript "C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %IP% -h %IP%
	rundll32 printui.dll,PrintUIEntry /if /b "%name%" /f "C:\Software\Printers\XeroxPCL6\Xerox\x2UNIVX.inf" /r "%IP%" /m "Xerox"
	pause
	CLS
	GOTO Home
	
	:N
	echo.
	echo Try again.
	pause
	CLS
	GOTO One

:Six
NET STOP "PrintSpooler"
pause
GOTO Home

:Seven
echo.
CLS
Color 2
PING 1.1.1.1 -n 2 -w 20.0 >NUL
echo Have you ever had a dream, Ben, that you were so sure was real?
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo What if you were unable to wake from that dream?
PING 1.1.1.1 -n 2 -w 60.0 >NUL
echo How would you know the difference between the dream world and the real world?
PING 1.1.1.1 -n 2 -w 300.0 >NUL
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Programs\Other\Full.bat"
exit


:Eight 
NET START "PrintSpooler"
pause
GOTO Home	
	
:I
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\c1Installer.bat"

:Q
echo.
echo.
echo Thanks for using the C1 SetUp Program!
pause
