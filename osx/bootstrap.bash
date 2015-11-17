#!/usr/bin/env bash
# Install core packages/tools/softwares for your mac
if ! [[ -x $(which brew) ]]
then
    echo "Now install Homebrew."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Finished."

    echo "Now install Homebrew Cask."
    brew install caskroom/cask/brew-cask
    echo "Finished."
fi

if ! [[ $? == "0" ]]
then
    echo "Installation of Homebrew/Cask failed. Please try again."
fi

if ! [[ -x $(which wget) ]]
then
    echo "Now install wget."
    brew install wget
    echo "Finished."
fi

if ! [[ $? == "0" ]]
then
    echo "Installation of wget failed. Please try again."
fi

if ! [[ -x $(which pip) ]]
then
    echo "Now install pip."
    wget -O /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py
    $(which python2.7) /tmp/get-pip.py
    rm /tmp/get-pip.py
    echo "Finished."
fi
