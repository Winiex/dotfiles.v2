VIM=$(which vim)

NEED_INSTALL=false

if [[ -L $VIM ]]
then
    REAL_VIM=`readlink ${VIM}`
    if ! [[ $REAL_VIM == *Cellar/macvim* ]]
    then
        NEED_INSTALL=true
    fi
else
    NEED_INSTALL=true
fi

if [[ $NEED_INSTALL == true ]]
then
    clr_green "Now install MacVim and override the system default one."
    brew install macvim --with-override-system-vim
    clr_green "Finished."
fi
