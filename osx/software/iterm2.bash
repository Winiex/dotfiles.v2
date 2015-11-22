ls "/Applications/iTerm"* > /dev/null

if ! [[ $? == "0" ]]
then
    ls "${GLB_USER_HOME}/Applications/iTerm"* > /dev/null
fi

if ! [[ $? == "0" ]]
then
    clr_green "Install iTerm 2."
    brew cask install iterm2
    clr_green "Finished."
fi