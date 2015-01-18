#!/bin/sh
sudo apt-get -y update
sudo apt-get -y install python-tk
sudo apt-get -y install python-imaging
sudo apt-get -y install python-imaging-tk
sudo apt-get -y install x11-xserver-utils
sudo apt-get -y install unclutter
sudo apt-get -y install mplayer
sudo apt-get -y install uzbl
sudo apt-get -y install usbmount
## Configure usbmount
sudo sed --in-place "s/^FS_MOUNTOPTIONS=\"\"/FS_MOUNTOPTIONS=\"\-fstype=vfat,gid=users,dmask=0007,fmask=0117\"/" /etc/usbmount/usbmount.conf
# Install pexpect
cd ~
wget http://pexpect.sourceforge.net/pexpect-2.3.tar.gz
tar xzf pexpect-2.3.tar.gz
cd pexpect-2.3
sudo python ./setup.py install
# Install pipresents
cd ~
rm -rf KenT2-pipresents*
wget https://github.com/KenT2/pipresents-next/tarball/master -O - | tar xz
mv KenT2-pipresents-next-* pipresents
## Install Profiles
cp -r ~/pipresents/pp_home ~/pp_home
mkdir /home/pi/pp_home/pp_live_tracks
rm -rf ~/pp_home/pp_profiles/*
mkdir /home/pi/pp_home/pp_profiles/pp_live
cd ~/pp_home/pp_profiles/pp_live
wget https://raw.githubusercontent.com/cewi/PIUSB/master/pp_live/gpio.cfg
wget https://raw.githubusercontent.com/cewi/PIUSB/master/pp_live/liveshow.json
wget https://raw.githubusercontent.com/cewi/PIUSB/master/pp_live/pp_showlist.json
wget https://raw.githubusercontent.com/cewi/PIUSB/master/pp_live/resources.cfg
mkdir ~/pp_home/media
# prepare auto start
cd /var/tmp
wget https://raw.githubusercontent.com/reddipped/PIChannel/master/scripts/pipresents.desktop
mkdir -p /home/pi/.config/autostart
cp /var/tmp/pipresents.desktop /home/pi/.config/autostart