@echo off
echo --------------------------------------------------------
echo "					Fire installer 1.0               "
echo "By Zeven"
echo "Github: https://github.com/z3ven/FireInstaller"
echo "YouTube: https://www.youtube.com/channel/UCQNtGAgFfVfCOKoxvpvpPrw"
echo --------------------------------------------------------
echo "Program copying your old files to the Windows.old folder."
cd C:
md Windows.old	
move C:\Users C:\Windows.old/Users
move "C:\Program Files" "C:\Windows.old/Program Files"
move "C:\Program Files (x86)" "C:\Windows.old/Program Files (x86)"
echo "Old files copied sucsessful. Now windows files will unpack.Dont power off your PC or laptop"
cd D:
cd sources
dism /apply-image /imagefile:install.wim /index:1 /applydir:C:
echo "Windows files unpacked sucsessfull.You can restart your device now."
