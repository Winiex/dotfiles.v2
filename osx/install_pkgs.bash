if [[ $? == "0" ]]
then
    echo "Now install MacVim and override the system default one."
    brew install macvim --with-override-system-vim
    echo "Finished."
else
    echo "Pkg installation failed. Try install again."
    exit
fi
