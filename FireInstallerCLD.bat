@echo off
echo --------------------------------------------------------
echo "					Fire installer 1.0               "
echo "By Zeven"
echo "Github: https://github.com/zeven/FireInstaller"
echo "YouTube: https://www.youtube.com/channel/UCQNtGAgFfVfCOKoxvpvpPrw"
echo --------------------------------------------------------
echo "FireInstaller will part the disk.Dont turn off your device"
DISKPART /s fireinstallercldparrams.txt
echo "Parted successfully.FireInstaller will format disk.Dont turn off your device"
format H: /fs:fat32 /q /autotest
format C: /fs:NTFS /q /autotest
echo "Formated successfully.FireInstaller will unpack Windows files.Dont turn off your device"
cd D:
cd sources
dism /apply-image /imagefile:install.wim /index:1 /applydir:C:
bcdboot C:\Windows /s H:
echo "Windows files unpacked sucsessfull.You can restart your device now."