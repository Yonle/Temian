echo "Are you sure to restore your Terminal into Normal Termux?"
echo ""
echo "This can't be Undone! (Do CTRL + C For cancel)"
sleep 5

echo "--> Quick Uninstall"
rm -rf /data/data/com.termux/files/usr/bin/login
proot-distro remove debian-buster
apt autoremove proot-distro pulseaudio
clear
echo "--> Bye - Bye!"
sleep 3
clear
exec /data/data/com.termux/files/usr/bin/bash
