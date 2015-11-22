#!/usr/bin/env bash
# Load libs
source ./lib/globals.bash
source ./lib/sysinfo.bash
source ./lib/colors.bash

#Run this script will install the dotfiles.

#Check whether the ~/.dotfiles directory exists.
if [[ -d ~/.dotfiles ]]
then
    clr_red "~/.dotfiles directory exists. Dotfiles already installed. Exit."
    exit 1
fi

#Clone the dotfiles from github.
#Use this childish ASCII art to make it rock a little bit.
printf "\n"
clr_green "#######################################"
clr_green "#  Now download basic dotfiles        #"
clr_green "#######################################"
printf "\n"

git clone --recursive https://github.com/Winiex/dotfiles.git ~/.dotfiles

cd ~/.dotfiles
git remote set-url origin "git@github.com:Winiex/dotfiles.git"

clr_green "#######################################"
clr_green "# Basic dotfiles installed.           #"
clr_green "# Everything is under control.        #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

#Install OS specified stuff.
printf "\n"
clr_green "#######################################"
clr_green "#  Now Install OS specified stuff     #"
clr_green "#######################################"
printf "\n"

if [[ $SYS_PLATFORM == "osx" ]]
then
    source ./osx/install.sh
elif [[ $SYS_PLATFORM == "arch" ]]
then
    source ./arch/install.sh
elif [[ $SYS_PLATFORM == "ubuntu" ]]
then
    source ./ubuntu/install.sh
fi

clr_green "#######################################"
clr_green "# OS specified stuff installed.       #"
clr_green "# Life is short, choose a good OS.    #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

#Install bash configurations.
printf "\n"
clr_green "#######################################"
clr_green "#  Now install bash configurations    #"
clr_green "#######################################"
printf "\n"

source ./bash/install.sh

clr_green "#######################################"
clr_green "# Bash configurations installed.      #"
clr_green "# Now your bash is your zsh.          #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

#Install vim configurations.
printf "\n"
clr_green "#######################################"
clr_green "#  Now install vim configurations     #"
clr_green "#######################################"
printf "\n"

source ./vim/install.sh

clr_green "#######################################"
clr_green "# Vim configurations installed.       #"
clr_green "# Emacs is good, I choose vim.        #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

printf "\n"
clr_green "#######################################"
clr_green "# Dotfiles installed successfully.    #"
clr_green "# My dotfiles will find you.          #"
clr_green "#                -- By winiex         #"
clr_green "# Contact Me: winiex.nie#gmail.com    #"
clr_green "#######################################"
printf "\n"
