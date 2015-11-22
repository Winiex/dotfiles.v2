#!/usr/bin/env bash
if [ -d ~/.vim ]; then
    clr_green "Found existing .vim directory in your HOME directory."
    clr_green "Move it to ~/.vim_backup."
    mv ~/.vim ~/.vim_backup
fi

if [ -f ~/.vimrc ]; then
    clr_green "Found existing .vimrc file in your HOME directory."
    clr_green "Move it to ~/.vimrc_backup."
    mv ~/.vimrc ~/.vimrc_backup
fi

if [ -f ~/.gvimrc ]; then
    clr_green "Found existing .gvimrc file in your HOME directory."
    clr_green "Move it to ~/.gvimrc_backup."
    mv ~/.gvimrc ~/.gvimrc_backup
fi

ln -s $GLB_VIM_HOME/vimrc.vim ~/.vimrc
ln -s $GLB_VIM_HOME/gvimrc.vim ~/.gvimrc
ln -s $GLB_VIM_HOME/vim/ ~/.vim