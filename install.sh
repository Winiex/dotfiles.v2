#!/usr/bin/env bash
source ./lib/sysinfo.bash

if [[ $SYS_PLATFORM == "osx" ]]
then
    source ./osx/setup.sh
elif [[ $SYS_PLATFORM == "arch" ]]
then
    source ./arch/setup.sh
elif [[ $SYS_PLATFORM == "ubuntu" ]]
then
    source ./ubuntu/setup.sh
fi
