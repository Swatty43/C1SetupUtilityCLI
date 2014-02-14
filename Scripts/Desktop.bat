REM Set Max Performance
powercfg -setactive 97f1c39a-e33c-4383-a4c3-e12ec18de319

REM Wireless adapter

powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 0
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 2

REM Sleep settings
	REM Sleep After 
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 900

	REM Hybrid Sleep
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0

	REM Hibernate After
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0

REM Usb Settings
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 1

REM Power Buttons and lid
	REM Lid close action
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 1

	REM Power button action
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3

	REM Sleep button action
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 1
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 1

	REM Start menu power button
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 0
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 0

REM Display
	REM Dim Display After
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 300 
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 300

	REM Turn off display after
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0 
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 600

	REM Display brightness
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 100

	REM Dimmed display brightness
powercfg -setacvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 30
powercfg -setdcvalueindex 97f1c39a-e33c-4383-a4c3-e12ec18de319 7516b95f-f776-4464-8c53-06167f40cc99 f1fbfde2-a960-4165-9f88-50667911ce96 01
pause







