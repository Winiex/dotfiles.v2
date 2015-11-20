if ! [[ -x $(which axel) ]]
then
    clr_green "Now install axel."
    brew install axel
    clr_green "Finished."
fi
