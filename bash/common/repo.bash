if ! [[ -d ~/repository ]]
then
    clr_green "~/repository directories not exists, create it."
    mkdir "~/repository"
    mkdir "~/repository/code"
    mkdir "~/repository/source"
    mkdir "~/repository/play"
else
    if ! [[ -d ~/repository/code ]]
    then
        mkdir "~/repository/code"
    fi

    if ! [[ -d ~/repository/play ]]
    then
        mkdir "~/repository/play"
    fi

    if ! [[ -d ~/repository/source ]]
    then
        mkdir "~/repository/source"
    fi
fi

if [[ -d ~/repository/code ]]
then
    clr_green "Link ~/repository/code to ~/code."
    ln -s "~/repository/code" "~/code"
fi

if [[ -d ~/repository/source ]]
then
    clr_green "Link ~/repository/source to ~/source."
    ln -s "~/repository/source" "~/source"
fi

if [[ -d ~/repository/play ]]
then
    clr_green "Link ~/repository/play to ~/play."
    ln -s "~/repository/play" "~/play"
fi