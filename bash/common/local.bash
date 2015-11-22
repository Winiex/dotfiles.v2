if ! [[ -f $GLB_USER_HOME/.local.bash ]]
then
    clr_green "Create ~/.local.bash file where you can put your own bash configs."
    touch $GLB_USER_HOME/.local.bash
fi