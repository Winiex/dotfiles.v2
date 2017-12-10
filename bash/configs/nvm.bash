export NVM_DIR="$HOME/.nvm"

if [ -f $NVM_DIR/nvm.sh ]; then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
fi

if [ -f $NVM_DIR/bash_completion ]; then
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
