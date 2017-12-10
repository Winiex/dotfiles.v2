#!/usr/bin/env bash
if [ -f ~/.tmux.conf ]; then
    clr_green "Found existing .tmux.conf in your HOME directory."
    clr_green "Move it to ~/.tmux.conf_backup."
    mv ~/.tmux.conf ~/.tmux.conf_backup
fi

if [ -f ~/.tmux.conf.local ]; then
    clr_green "Found existing .tmux.conf.local in your HOME directory."
    clr_green "Move it to ~/.tmux.conf.local_backup."
    mv ~/.tmux.conf.local ~/.tmux.conf.local_backup
fi

ln -s $GLB_TMUX_HOME/OhMyTmux/.tmux.conf ~/.tmux.conf
cp $GLB_TMUX_HOME/.tmux.conf.local ~/.tmux.conf.local

if [ `command -v tmux` ]; then
    tmux source-file ~/.tmux.conf
fi
