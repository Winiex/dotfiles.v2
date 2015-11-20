#!/usr/bin/env bash

# Load libs
source ./lib/globals.bash
source ./lib/sysinfo.bash
source ./lib/colors.bash

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

clr_green "Now install bash configurations."
source ./bash/install.sh
clr_green "Finished."
