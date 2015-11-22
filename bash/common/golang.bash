if ! [[ -d $GLB_USER_HOME/.gohome ]]
then
    clr_green "Create golang home dir."
    mkdir $GLB_USER_HOME/.gohome
fi