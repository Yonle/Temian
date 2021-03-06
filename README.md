# Temian
Make your **Termux** into **Debian Terminal**. 

## How it works?
It uses [proot](https://github.com/termux/proot) to work, With Login patching.

## System Requirements
### **Minimal** uses requirenents:
  - 16 GB Internal Storage
  - Android 7+
  - 1.5 GB+ RAM
  - 1.6 Ghz CPU. 
### ****Recommended**** requirements:
  - 32 GB+ Internal Storage
  - Android 7+
  - 2 GB+ RAM
  - 2 Ghz+ CPU

## Getting Started
This step will let's you install **Temian** on your Termux. Make sure you have a better internet connection. 
 - Upgrade package Repository (Skip if you already do this.) 
   - Command: `pkg update -y`
 - Install `git`
   - Command: `pkg install git -y`
 - Clone this Repo
   - Command: `git clone https://github.com/yonle/Temian.git`
 - Run Installation files
   - Command: `cd Temian && sh install.sh`
 - **Restart Termux after installation Finished.**

## Screenshot
![screenshot](https://temian.glitch.me/assets/screenshot.jpg) 
## Fixing dpkg errors

1. udisks2
   ```
   dpkg: error processing package udisks2 (--configure):
    installed udisks2 package post-installation script subprocess returned error exit status 1
   ```
   Solution:
   ```
   rm /var/lib/dpkg/info/udisks2.postinst
   dpkg --configure -a
   ```
2. libfprint-2-2
   ```
   dpkg: error processing package libfprint-2-2:arm64 (--configure):
    installed libfprint-2-2:arm64 package post-installation script subprocess returned error exit status 1
   ```
   Solution:
   ```
   rm /var/lib/dpkg/info/libfprint0:*.postinst
   dpkg --configure -a
   ```

## Community
 - [Discord Server](https://discord.gg/9S3ZCDR) 
