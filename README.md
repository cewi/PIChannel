PIUSB
=========

The provides scripts will configure a Raspberry Pi as an USB Media Player. After booting it plays automatically all media files from any plugged usb-stick in an endless presentation. Uses [PiPresents](https://pipresents.wordpress.com/) from KenT2. Starts a so called "Liveshow" which is configured to play anything from a plugged USB-Stick. The stick is mounted to the raspi the way Martin Schulte described [here](https://pipresents.wordpress.com/hints-and-tips/using-usb-sticks-without-naming-them/). The installation- and configuration-scripts are a slight modification of the work of Peter van Nes [reddipped](https://github.com/reddipped/PIChannel).

For german instructions see [wiki](https://github.com/cewi/PIUSB/wiki).

##Requirements
- RaspberryPi (I used Model B+, but A+ should work either)
 - SD-Card (4GB oder more - see NOOBS requirements)
 - USB Power Supply
- HDMI-Cable
- (Internet, Mouse and Keyboard only for installation)
- USB-Stick with Media Files (e.g. export a Powerpoint-Presentation to single-sheet Jpeg-Files. For best results set size (graphics and video) to 1920 x 1080 (HD).

##Installation
Copy Raspbian onto the SD-Card. The easiest way is via NOOBS as described [here](http://www.raspberrypi.org/help/noobs-setup/). Choose only Raspbian OS for installation. Otherwise you get a boot loader which will ask you which OS to boot any time you start the raspi.  
Start the raspi, and log in (onto console or per ssh). Now download and start several scripts as described below. Just copy and paste the provided code to the console. This will first download and then execute the script.

For a detailed description what these scripts are doing, see [here](http://www.reddipped.com/2014/06/grandpas-family-channel/)

1. Initial Raspbian Setup Script:

        cd /var/tmp  
        wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/init_pi.sh  
        sudo chmod u+x init_pi.sh  
        sudo ./init_pi.sh  
 
2. Update Raspbian and firmware

        cd /var/tmp  
        wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/update_raspbian_and_firmware.sh  
        sudo chmod u+x update_raspbian_and_firmware.sh  
        sudo ./update_raspbian_and_firmware.sh  
    
3. Install a Bootlogo (optional)

        cd /var/tmp
        wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/setup_bootlogo.sh
        sudo chmod u+x setup_bootlogo.sh
        sudo ./setup_bootlogo.sh
(you can overwrite the logo with your own, if you like) 

4. Configure OS

        cd /var/tmp  
        wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/config_raspbian.sh  
        sudo chmod u+x config_raspbian.sh  
        sudo ./config_raspbian.sh  

5. Cleanup the Desktop

        cd /var/tmp  
        wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/config_desktop.sh  
        chmod u+x config_desktop.sh  
        ./config_desktop.sh  

6. Install and configure Pipresents

        cd /var/tmp  
        wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/setup_pipresents.sh  
        chmod u+x setup_pipresents.sh  
        ./setup_pipresents.sh  

Reboot the raspi. If you plug any USB-Stick, it will immediately start playing all media it can.

###TODO
You can give the raspi WLAN-access with an USB-WLAN-device:

        cd /var/tmp  
        wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/setup_wifi.sh  
        chmod u+x setup_wifi.sh  
        ./setup_wifi.sh  
