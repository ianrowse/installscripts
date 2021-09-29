#!/bin/bash
echo "Lets remove software i dont use"
sleep 2
###########################################################
# REMOVE SOFTWARE FROM ISO IF IT IS INSTALLED #
###########################################################
sudo pacman -R gimp
sudo pacman -R inkscape
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
############################################################
# install AUR for arch packages #
############################################################
sudo pacman -S yay --noconfirm
sudo pacman -Syu artix-archlinux-support

echo "Now lets install all my software"
############################################################
# Software Packages #
############################################################
sudo pacman -S git --noconfirm --needed
sudo pacman -S brave --noconfirm --needed
sudo pacman -S firefox --noconfirm --needed
sudo pacman -S sublime-text --noconfirm --needed
sudo pacman -S vlc --noconfirm --needed
sudo pacman -S nano --noconfirm --needed
sudo pacman -S hblock --noconfirm --needed
sudo pacman -S bleachbit --noconfirm --needed
sudo pacman -S timeshift --noconfirm --needed
sudo pacman -S steam --noconfirm --needed
sudo pacman -S virtualbox --noconfirm --needed
sudo pacman -S docker --noconfirm --needed


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
