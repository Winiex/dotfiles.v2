ls "/Applications/Google Chrome"* > /dev/null

if ! [[ $? == "0" ]]
then
    ls "${GLB_USER_HOME}/Applications/Google Chrome"* > /dev/null
fi

if ! [[ $? == "0" ]]
then
    clr_green "Install Google Chrome."
    brew cask install google-chrome
    clr_green "Finished."
fi