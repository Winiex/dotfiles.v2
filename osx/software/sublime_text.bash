ls "/Applications/Sublime Text"* > /dev/null

if ! [[ $? == "0" ]]
then
    ls "${GLB_USER_HOME}/Applications/Sublime Text"* > /dev/null
fi

if ! [[ $? == "0" ]]
then
    clr_green "Install Sublime Text Editor."
    brew cask install sublime-text
    clr_green "Finished."
fi