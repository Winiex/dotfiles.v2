if [[ ! ( -d "/Applications/iTerm.app" ) && ! ( -d "${GLB_USER_HOME}/Applications/iTerm.app") ]]
then
    clr_green "Install iTerm 2."
    brew cask install iterm2
    clr_green "Finished."
fi
