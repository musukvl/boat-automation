#!/bin/bash
sudo apt-get update

# tools


# install rtl-sdr
sudo apt install rtl-sdr -y

printf '%s' 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="0bda", ATTRS{idProduct}=="2838", GROUP="plugdev", MODE="0666"' | sudo tee /etc/udev/rules.d/20-rtl-sdr.rules >/dev/null && sudo udevadm control --reload-rules && sudo udevadm trigger
rtl_test


# install ais catcher
# https://jvde-github.github.io/AIS-catcher-docs/installation/overview/

sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/jvde-github/AIS-catcher/main/scripts/aiscatcher-install) _ -p"
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/jvde-github/AIS-catcher-control/main/install_ais_catcher_control.sh)"