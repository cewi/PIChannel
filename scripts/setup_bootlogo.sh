#!/bin/sh
cd /var/tmp
apt-get -y install fbi
wget https://raw.githubusercontent.com/cewi/PIUSB/master/img/pi_usb.png
wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/aasplashscreen
cp aasplashscreen /etc/init.d/aasplashscreen
chmod u+x /etc/init.d/aasplashscreen
#sudo update-rc.d aasplashscreen defaults
insserv /etc/init.d/aasplashscreen
cp /var/tmp/pi_usb.png /etc
# quiet boot mode
echo `cat /boot/cmdline.txt` quiet logo.nologo loglevel=3 | tee /var/tmp/cmdline.txt
cp /var/tmp/cmdline.txt /boot
sed --in-place "s/console=tty1/console=tty3/" /boot/cmdline.txt
# reboot to test
shutdown -r 0 now