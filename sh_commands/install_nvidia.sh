#! /usr/bin/bash
echo "root" | sudo -S " add-apt-repository ppa:graphics-drivers/ppa"
echo "root" | sudo -S " ubuntu-drivers autoinstall"