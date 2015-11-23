if ! [[ -x $(which virtualenvwrapper.sh) ]]
then
    clr_green "Now install virtualenvwrapper."
    sudo pip install  --upgrade --ignore-installed virtualenvwrapper
    clr_green "Finished."
fi