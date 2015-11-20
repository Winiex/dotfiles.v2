source ./bootstrap.sh

BASH_HOME=${GLB_USER_HOME}/.dotfiles/bash

# Load configurations
source $BASH_HOME/configs/bashit.bash
source $BASH_HOME/configs/python.bash
source $BASH_HOME/configs/editor.bash
source $BASH_HOME/configs/virtualenv.bash
