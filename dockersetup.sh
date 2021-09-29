#!/bin/bash
echo " This is to install docker and get it running "
sleep 2
###################################################
# Let install Docker #
###################################################
sudo pacman -S docker --noconfirm
sudo systemctl start docker
sudo systemctl enable docker

###################################################
# Is docker running #
###################################################
sudo systemctl status docker

