#!/usr/bin/env bash
# Install core packages/tools/softwares for your mac

# Check if xcode dev tools are installed.
xcode-select -p > /dev/null

if ! [[ $? == "0" ]]
then
    clr_red "Xcode command line tools are not installed."
    clr_green "Now install Xcode command line tools."
    "xcode-select" --install
    clr_green "Finished."
fi

xcode-select -p > /dev/null

if ! [[ $? == "0" ]]
then
    echo "Installation of Xcode command line tools failed. Please try again."
fi

# Install Homebrew and Homebrew Cask.
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

if ! [[ $? == "0" ]]
then
    echo "Installation of pip failed. Please try again."
fi
