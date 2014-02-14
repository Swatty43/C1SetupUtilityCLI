@echo off
color 79
mode con cols=65 lines=40 >nul
:home
cls
echo.
echo        ################################################
echo        #                                              #
echo        #       Composites One Software Installer      # 
echo        #                                              #
echo        #   Please select an option and press [Enter]  #
echo        #                                              #
echo        ################################################
echo.
echo        ================================================
echo        ### 1) KetarinInstaller      5) WG MVPN      ###
echo        ### 2) LogMeIn	            6) Power-Tweak  ###
echo        ### 3) NOD32	            7) Printers     ###
echo        ### 4) MXP                   8)              ###
echo        ================================================
echo.
echo.
echo       ================================================
echo            F: Favorites. U: Uninstaller. C: CCleaner.
echo.
echo            W: WinUpdates. PE: ProExp. AR: Autoruns.
echo.
echo                          Q: Quit.                          
echo       ================================================
echo.
SET /P choice=Enter Selection:

if "%choice%"=="" GOTO Error
if %choice% ==1 GOTO One
if %choice% ==2 GOTO Two
if %choice% ==3 GOTO Three
if %choice% ==4 GOTO Four
if %choice% ==5 GOTO Five
if %choice% ==6 GOTO Six
if %choice% ==7 GOTO Seven
if %choice% ==8 GOTO Eight
if /I %choice%==C GOTO C
if /I %choice% ==Q GOTO Q
if /I %choice% ==U GOTO U
if /I %choice% ==F GOTO F
if /I %choice% ==K GOTO K
if /I %choice% ==W GOTO W
if /I %choice% ==PE GOTO PE
if /I %choice% ==AR GOTO AR


:Error
echo.
echo Please make a valid choice!!
pause
GOTO home

:One
echo.
PING 1.1.1.1 -n 2 -w 1.0 >NUL
echo Ketarin will download and install the following:
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo 7Zip, Adobe Reader, CCleaner, CutePDF Writer,
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo Defraggler, Google Drive, Java, Malwarebytes
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo Quicktime, Speccy, SuperAntiSpyware
PING 1.1.1.1 -n 2 -w 40.0 >NUL
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Ketarin.exe" /install="C:\Users\%username%\Desktop\C1\Files\Ketarin\NewTemp.xml" /exit
echo Above programs should now be installed.
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo.
"C:\Users\%username%\Desktop\C1\Files\Software\googletalk-setup.exe" /S
echo Google Talk Should be installed!
echo.
echo File Convert will now install!
"C:\Users\%username%\Desktop\C1\Files\Software\FileFormatConverters\O12Conv.msi" /qn
echo.
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo Now will download and install Office 2000 Pro w/o Outlook.
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo.
md C:\Software
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/O9PROCD01.zip -O "C:\Software\O9PROCD01.zip"
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\7za.exe" X "C:\Software\O9PROCD01.zip" -oC:\Software\
del "C:\Software\O9PROCD01.zip"
"C:\Software\O9PROCD01\setup.exe" TRANSFORMS="C:\Software\O9PROCD01\SetupFile.MST" /qn+
echo.
echo Please wait while Office finishes install!
pause
GOTO home

:Two
echo.
echo LogMeIn will now install!
"C:\Users\%username%\Desktop\C1\Files\Software\LogMeIn.msi"
pause
GOTO home

:Three
echo.
echo NOD32 will now install!
"C:\Users\%username%\Desktop\C1\Files\Software\nod32_nt64.exe"
pause
GOTO home

:Four
echo.
echo Copying PUTTY folder to program files
echo Copying shortcut to desktop
echo Running reg file
echo Replacing Host file
xcopy "C:\Users\%username%\Desktop\C1\Files\Putty" "C:\Program Files\Putty" /q /y
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\nircmd.exe" shortcut "C:\Program Files\Putty\mxp.bat" "C:\Users\%username%\Desktop" "MXP" "C:\Windows\explorer.exe" "C:\Program Files\Putty\MXP.ico" "" "" "C:\Program Files\Putty" ""
regedit.exe /s "C:\Users\%username%\Desktop\C1\Files\Putty\putty.reg"
xcopy /y "C:\Users\%username%\Desktop\C1\Files\Putty\hosts" "C:\Windows\System32\drivers\etc"
pause
GOTO home


:Five
echo.
"C:\Users\%username%\Desktop\C1\Files\Software\WG-MVPN-SSL_11_6.exe"
echo WG VPN will now install!
pause
GOTO home

:Six
echo.
echo.
echo Select L for Laptop  Select D for Desktop
echo.
echo This will enable and tweak power options
echo.
SET /P choice=Enter Selection:

if "%choice%"=="" GOTO Z 
if /I %choice% ==L GOTO L
if /I %choice% ==D GOTO D
	:L
	echo Set Balanced profile active
powercfg.exe -setactive 381b4222-f694-41f0-9685-ff5bb260df2e

echo Wireless adapter

powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 2

echo Sleep settings
	echo Sleep After 
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 900

	echo Hybrid Sleep
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0

	echo Hibernate After
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0

echo Usb Settings
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 1

echo Power Buttons and lid
	echo Lid close action
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 1

	echo Power button action
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3

	echo Sleep button action
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 1
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 1

	echo Start menu power button
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 0
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 0

echo Display
	echo Dim Display After
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 300 
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 300

	echo Turn off display after
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0 
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 600

	echo Display brightness
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100

	echo Dimmed display brightness
powercfg.exe -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 30
powercfg.exe -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 01
regedit.exe /s "C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\WifiPowerMan.reg"
	pause
	goto Home

	:D
	echo Set Max Performance
powercfg.exe -setactive 97f1c39a-e33c-4383-a4c3-e12ec18de319

echo Wireless adapter

powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 2

echo Sleep settings
	echo Sleep After 
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 900

	echo Hybrid Sleep
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0

	echo Hibernate After
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0

echo Usb Settings
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 1

echo Power Buttons and lid
	echo Lid close action
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 1

	echo Power button action
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3

	echo Sleep button action
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 1
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 1

	echo Start menu power button
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 0
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 0

echo Display
	echo Dim Display After
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 300 
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 300

	echo Turn off display after
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0 
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 600

	echo Display brightness
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100

	echo Dimmed display brightness
powercfg.exe -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 30
powercfg.exe -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 01
	pause
	goto Home
	
	:Z
	echo Please enter either L or D!
	pause
	goto Six
pause
GOTO home

:Seven
echo Going to Printer Installer!
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\Printer.bat"
echo.

pause
GOTO home

:Eight
CLS
Color 2
mode con cols=80 lines=40 >nul
echo.
PING 1.1.1.1 -n 2 -w 20.0 >NUL
echo Have you ever had a dream, Ben, that you were so sure was real?
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo What if you were unable to wake from that dream?
PING 1.1.1.1 -n 2 -w 60.0 >NUL
echo How would you know the difference between the dream world and the real world?
PING 1.1.1.1 -n 2 -w 300.0 >NUL
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Programs\Other\Full.bat"
exit

:F
echo.
echo Select A for US  Select B for CA
echo.
echo This will copy favorites into Toolbar
echo.
SET /P choice=Enter Selection:

if "%choice%"=="" GOTO Z 
if /I %choice% ==A GOTO A
if /I %choice% ==B GOTO B
	:A
	xcopy "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\US\Employee Links" "C:\Users\%username%\Favorites\Links\Employee links\" /q /y
	xcopy "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\US\Bookmarks" "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default" /q /y
	regedit.exe /s "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\IEStart.reg"
	xcopy "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\master_preferences" "C:\Program Files (x86)\Google\Chrome\Application"
	xcopy "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\Preferences" "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default" /q /y
	pause
	goto Home

	:B
	xcopy "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\CA\Employee Links" "C:\Users\%username%\Favorites\Links\Employee links" /q /y
	xcopy "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\CA\Bookmarks" "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default" /q /y
	regedit.exe /s "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\IEStart.reg"
	xcopy "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\master_preferences" "C:\Program Files (x86)\Google\Chrome\Application"
	xcopy "C:\Users\%username%\Desktop\C1\Files\Ketarin\Favorites\Preferences" "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default" /q /y
	pause
	goto Home
	
	:Z
	echo Please enter either A or B!
	pause
	goto F

:C
echo.
echo Now running CCleaner!
"C:\Program Files\CCleaner\CCleaner64.exe" /registry 
pause
GOTO home

:PE
echo.
echo Starting Process Explorer!
runas /user:%username%\administrator "C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\Sysinternals\procexp.exe" /e
pause
GOTO Home

:AR
echo.
echo Starting Autoruns!
runas /user:%username%\administrator "C:\Users\%username%\Desktop\C1\Files\Ketarin\Tools\Sysinternals\autoruns.exe" /e
pause
GOTO Home


:W
echo.
echo This will search,download, and install Windows Updates.
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\wu.bat"
pause
GOTO home

:U
echo Going back to Uninstaller!
"C:\Users\%username%\Desktop\C1\Files\Ketarin\Scripts\C1SetUp.bat"


:Q
echo.
echo.
echo Thanks for using the C1 SetUp Program!
pause

