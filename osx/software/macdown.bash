if [[ ! ( -d "/Applications/MacDown.app" ) && ! ( -d "${GLB_USER_HOME}/Applications/MacDown.app") ]]
then
    clr_green "Install MacDown."
    brew cask install macdown
    clr_green "Finished."
fi
