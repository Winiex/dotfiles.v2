BREW_TAPS=`brew tap`

if ! [[ $BREW_TAPS == *caskroom/fonts* ]]
then
    clr_green "Install Homebrew Cask fonts repository."
    brew tap caskroom/fonts
    clr_green "Finished."
fi

exist_fonts=`brew cask list | grep font`

clr_green "Now install fonts."
fonts=`cat ./config/fonts.list`
for font in $fonts
do
    if ! [[ $exist_fonts == *${font}* ]]
    then
        clr_green "Now install font: ${font}."
        brew cask install $font
        clr_green "Finished."
    fi
done
clr_green "Finished."
