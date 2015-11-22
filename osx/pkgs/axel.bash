if ! [[ -x $(which ack) ]]
then
    clr_green "Now install ack."
    brew install ack
    clr_green "Finished."
fi