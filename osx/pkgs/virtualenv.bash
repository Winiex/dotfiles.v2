if ! [[ -x $(which virtualenvwrapper.sh) ]]
then
    clr_green "Now install virtualenvwrapper."
    pip install virtualenvwrapper
    clr_green "Finished."
fi
