ls "/Applications/MacDown"* > /dev/null

if ! [[ $? == "0" ]]
then
    ls "${GLB_USER_HOME}/Applications/MacDown"* > /dev/null
fi

if ! [[ $? == "0" ]]
then
    clr_green "Install MacDown."
    brew cask install macdown
    clr_green "Finished."
fi
