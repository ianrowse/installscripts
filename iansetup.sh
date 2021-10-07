#!/bin/bash
echo "Lets remove software i dont use"
sleep 2
###########################################################
# REMOVE SOFTWARE FROM ISO IF IT IS INSTALLED #
###########################################################
sudo pacman -R gimp
sudo pacman -R inkscape
sudo pacman -R firedragon
sudo pacman -R alacritty
###########################################################
# Linux Package Manager Repo
###########################################################



###########################################################
echo "This is my new install script"
sleep 2
echo "First lets update all the packages"
sleep 2
sudo pacman -Syyy 
sudo pacman -Syyu --noconfirm --needed
echo "#####################################################"
echo "######## install AUR for arch packages #########"
echo "#####################################################"
sudo pacman -S yay --noconfirm
sudo pacman -Syu artix-archlinux-support

echo "####################################################"
echo "######### Software Packages ##########"
echo "####################################################"
sudo pacman -S git --noconfirm --needed
sudo pacman -S brave --noconfirm --needed
sudo pacman -S btop --noconfirm --needed
sudo pacman -S firefox --noconfirm --needed
sudo pacman -S sublime-text --noconfirm --needed
sudo pacman -S vlc --noconfirm --needed
sudo pacman -S nano --noconfirm --needed
sudo pacman -S hblock --noconfirm --needed
sudo pacman -S bleachbit --noconfirm --needed
sudo pacman -S timeshift --noconfirm --needed
sudo pacman -S steam --noconfirm --needed
sudo pacman -S virtualbox --noconfirm --needed
sudo pacman -S qbittorrent --noconfirm --needed
sudo pacman -S putty --noconfirm --needed
sudo pacman -S okular --noconfirm --needed
sudo pacman -S fish --noconfirm --needed
sudo pacman -S gwenview --noconfirm --needed
Sudo pacman -S veracrypt --noconfirm --needed

echo "###################################################"
echo "######## Install Keepassx ############"
echo "###################################################"
git clone https://aur.archlinux.org/keepassx.git

###########################################################
# Install Fonts & Themes
###########################################################
git clone https://github.com/erikdubois/arcolinux-nemesis
sudo pacman -S --noconfirm --needed arcolinux-candy-beauty-git
sudo pacman -S --noconfirm --needed ayu-theme
sudo pacman -S --noconfirm --needed arc-darkest-theme-git


############################################################
# NOT SURE ABOUT KEEPING
############################################################
sudo pacman -S arcolinux-meta-fun --noconfirm --needed

echo "#####################################################"
echo "####### UPDATE SYSTEM AGAIN ##############"
echo "#####################################################"
sudo pacman -Syyy 
sudo pacman -Syyu --noconfirm --needed
sleep 1
echo "#####################################################"
echo "####### REMOVE OLD PACKAGES #############"
echo "#####################################################"
sudo pacman -Sc --noconfirm --needed
sleep 2
clear 
exit
