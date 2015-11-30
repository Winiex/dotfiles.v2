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
    echo "Link ~/repository/code to ~/code."

    if ! [[ -L $GLB_USER_HOME/code ]]
    then
        ln -s -f $GLB_USER_HOME/repository/code $GLB_USER_HOME/code
    fi
fi

if [[ -d $GLB_USER_HOME/repository/source ]]
then
    echo "Link ~/repository/source to ~/source."

    if ! [[ -L $GLB_USER_HOME/source ]]
    then
        ln -s -f $GLB_USER_HOME/repository/source $GLB_USER_HOME/source
    fi
fi

if [[ -d ~/repository/play ]]
then
    echo "Link ~/repository/play to ~/play."

    if ! [[ -L $GLB_USER_HOME/play ]]
    then
        ln -s -f $GLB_USER_HOME/repository/play $GLB_USER_HOME/play
    fi
fi
