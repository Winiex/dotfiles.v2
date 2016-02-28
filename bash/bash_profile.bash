source ~/.dotfiles/bash/bootstrap.bash

#Load configurations
source $GLB_BASH_HOME/configs/basic.bash
source $GLB_BASH_HOME/configs/bashit.bash
source $GLB_BASH_HOME/configs/python.bash
source $GLB_BASH_HOME/configs/editor.bash
source $GLB_BASH_HOME/configs/virtualenv.bash
source $GLB_BASH_HOME/configs/golang.bash
source $GLB_BASH_HOME/configs/nodejs.bash

#Load custom alias
source $GLB_BASH_HOME/alias/basic.bash
source $GLB_BASH_HOME/alias/shortcuts.bash
source $GLB_BASH_HOME/alias/sublime.bash
source $GLB_BASH_HOME/alias/git.bash
source $GLB_BASH_HOME/alias/virtualenv.bash
source $GLB_BASH_HOME/alias/os.bash

source $GLB_BASH_IT_HOME/bash_it.sh
