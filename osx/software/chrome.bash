if [[ ! ( -d "/Applications/Google Chrome.app" ) && ! ( -d "${GLB_USER_HOME}/Applications/Google Chrome.app") ]]
then
    clr_green "Install Google Chrome."
    brew cask install google-chrome
    clr_green "Finished."
fi
