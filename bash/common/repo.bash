if ! [[ -d $GLB_USER_HOME/repository ]]
then
    clr_green "~/repository directories not exists, create it."
    mkdir "~/repository"
    mkdir "~/repository/code"
    mkdir "~/repository/source"
    mkdir "~/repository/play"
else
    if ! [[ -d $GLB_USER_HOME/repository/code ]]
    then
        mkdir "~/repository/code"
    fi

    if ! [[ -d $GLB_USER_HOME/repository/play ]]
    then
        mkdir "~/repository/play"
    fi

    if ! [[ -d $GLB_USER_HOME/repository/source ]]
    then
        mkdir "~/repository/source"
    fi
fi

if [[ -d $GLB_USER_HOME/repository/code ]]
then
    clr_green "Link ~/repository/code to ~/code."
    ln -s $GLB_USER_HOME/repository/code $GLB_USER_HOME/code
fi

if [[ -d $GLB_USER_HOME/repository/source ]]
then
    clr_green "Link ~/repository/source to ~/source."
    ln -s $GLB_USER_HOME/repository/source $GLB_USER_HOME/source
fi

if [[ -d ~/repository/play ]]
then
    clr_green "Link ~/repository/play to ~/play."
    ln -s $GLB_USER_HOME/repository/play $GLB_USER_HOME/play
fi