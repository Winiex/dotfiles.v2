#!/usr/bin/env bash

#Setup bash config files.
if [[ -f $GLB_USER_HOME/.bash_profile ]]
then
    clr_green "Found existing .bash_profile file in your HOME directory."
    clr_green "Move it to ~/.bash_profile_backup."
    mv $GLB_USER_HOME/.bash_profile $GLB_USER_HOME/.bash_profile_backup
fi

if [[ -f $GLB_USER_HOME/.bashrc ]]
then
    clr_green "Found existing .bashrc file in your HOME directory."
    clr_green "Move it to ~/.bashrc_backup."
    mv $GLB_USER_HOME/.bashrc $GLB_USER_HOME/.bashrc_backup
fi

ln -s $GLB_BASH_HOME/bash_profile.bash $GLB_USER_HOME/.bash_profile
ln -s $GLB_BASH_HOME/bashrc.bash $GLB_USER_HOME/.bashrc
ln -s $GLB_BASH_IT_HOME $GLB_USER_HOME/.bash_it

#Install common components
clr_green "Now install common components."
source $GLB_BASH_HOME/install_common.bash
clr_green "Finished."

#Install bash-it components
clr_green "Now install bash-it components."
source $GLB_BASH_HOME/install_aliases.bash
source $GLB_BASH_HOME/install_completion.bash
source $GLB_BASH_HOME/install_plugins.bash
clr_green "Finished."
