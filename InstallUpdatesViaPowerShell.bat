PowerShell -ExecutionPolicy Unrestricted -Command "Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force"
PowerShell -ExecutionPolicy Unrestricted -Command "Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted"
PowerShell -ExecutionPolicy Unrestricted -Command "install-module PSWindowsUpdate"
PowerShell -ExecutionPolicy Unrestricted -Command "get-wuinstall -acceptall -windowsupdate -microsoftupdate -ignorereboot -notTitle '(Language)'"