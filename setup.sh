#!/bin/bash
echo "Updating package definitions"
sudo apt update
echo "Upgrading all currently installed packages"
sudo apt upgrade -y --force-yes
echo "Installing python dependancies"
sudo apt-get install -y python-pip python-pygame python-dev
echo "Adding Adafruit package repository"
curl -SLs https://apt.adafruit.com/add-pin | sudo bash
echo "Installing dependancies for Pi TFT"
sudo apt-get install -y --force-yes raspberrypi-bootloader adafruit-pitft-helper raspberrypi-kernel
echo "Setting up Pi TFT"
echo "Please follow the on-screen prompts"
sleep 2
sudo adafruit-pitft-helper -t 28r
echo "You may need to reboot to enable the Pi TFT"
