#!/bin/bash
sudo apt install nvidia-headless-510-server
sudo apt install nvidia-utils-510-server
sudo apt install x11-apps
sudo apt install xterm
sudo echo "allowed_users=anybody" > /etc/X11/Xwrapper.config
nvidia-xconfig --allow-empty-initial-configuration --enable-all-gpus --cool-bits=28 --separate-x-screens
