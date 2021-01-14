if [ -x /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
  echo "This shell file is for Termux user only."
  exit 127
fi
clear
# Clear & Show up Warning Text
echo "-------------- WARNING --------------"
echo "This setup will installing Temian on Termux."
echo "After this installation, You cannot go back to your regular Termux Bash, THIS CANNOT BE UNDONE!"
echo "\nPlease do not interrupt anything during Installation & Make sure you have a good internet connection.\n"
echo "\nInstallation will started at 10 second"
echo "Press CTRL + C To cancel this installation"
# Wait for 10 second
sleep 10
clear
echo "-----> Common Permission"
echo "--> Please allow Termux to be run in Background."
# Wake-Lock for keep Termux running in Background
termux-wake-lock
echo "\n-----> Package Installation"
echo "--> Updating package database...."
# Update package database
apt update -y
echo "--> Installing package...."
# Install proot, proot-distro, curl, and wget
apt install proot* curl, wget -y
echo "-----> Debian Installation & Patching"
echo "--> Download & Installing Debian rootfs...."
proot-distro install debian-buster
echo "--> Patching Termux login...."
wget http://temian.glitch.me/assets/login && chmod +x login && rm $PREFIX/bin/login && mv login $PREFIX/bin/

echo "---------------------------"
echo "Installation Completed."
echo "\nRestart Termux to see the effect!\nWe very suggest you to install some useful things before entering to Temian! Have a good day!"
echo "\nNeed help? We always ready for Helping!"
echo "Discord: https://discord.gg/9S3ZCDR"
echo "---------------------------"