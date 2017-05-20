echo off

REM Sets the path variable only for the batch file, not the whole environment.
setlocal
set PATH=c:\windows\system32;c:\windows;c:\Windows\System32\wbem;

   echo x64
   
   REM Enables Clipping Tool.
   dism.exe /online /enable-feature /featurename:TabletPCOC

   REM Enables TIFF iFilter.
   dism.exe /online /enable-feature /featurename:TIFFIFilter

   REM Disables Games.
   dism.exe /online /Disable-Feature /FeatureName:InboxGames
   dism.exe /online /Disable-Feature /FeatureName:"More Games"

   REM Disables XPS Printing.
   dism.exe /online /Disable-Feature /FeatureName:Printing-XPSServices-Features

   REM Disables Windows Gadgets.
   dism.exe /online /Disable-Feature /FeatureName:WindowsGadgetPlatform

REM Uninstalls XBox client.
wmic product where "name like '%%XBox%%'" call uninstall /nointeractive

REM Removes local PATH.
endlocal

REM Enables WinRM on the system.
winrm qc -quiet