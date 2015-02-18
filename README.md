PIUSB
=========

This describes how to configure a raspberry pi to play automatically all media files from a plugged usb-stick in an endless presentation.   
Uses [PiPresents](https://pipresents.wordpress.com/) from KenT2. The Idea is to start a so called "Liveshow" which is configured to play anything from a plugged USB-Stick. The Stick is made available to the raspi as Martin Schulte described [here](https://pipresents.wordpress.com/hints-and-tips/using-usb-sticks-without-naming-them/).

The installation- and configuration-scripts are a slight modification based on the work of Peter van Nes [reddipped](https://github.com/reddipped/PIChannel) If you read carefully his instructions, you will have no problem understanding what's going on here.

For german instructions see [wiki](https://github.com/cewi/PIUSB/wiki).

##Requirements
- RaspberryPi (I used Model B+, but A+ should work either)
 - SD-Card (4GB oder more - see NOOBS requirements)
 - USB Power Supply
- HDMI-Cable
- (Internet, Mouse and Keyboard only during install)
- USB-Stick for Media (You can for example export a Powerpoint-Presentation to single-sheet Jpeg-Files. For best results set size (graphics and video) to 1920 x 1080 (HD).

##Installation
Copy Raspbian onto SD-Card. Easiest Way is via NOOBS as described [here](http://www.raspberrypi.org/help/noobs-setup/). Choose only Raspbian for installation not any other (secondary) OS. Otherwise you get a boot loader which will ask you which OS to boot any time you start the raspi.  
Start the raspi, and log in (i.e. per ssh). Now you have to download and start several scripts as described below. Just copy and paste the code to the console. The scripts base on the work of Peter van Nes / reddipped. Thank You!

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
    
3. Install a Bootlogo

        cd /var/tmp
        wget https://raw.githubusercontent.com/cewi/PIUSB/master/scripts/setup_bootlogo.sh
        sudo chmod u+x setup_bootlogo.sh
        sudo ./setup_bootlogo.sh
        
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

Reboot the raspi. If you plug any USB-Stick, it will immediately start playing all media it can handle.

##Things to do
Overwrite the Bootlogo with your own png-file.

