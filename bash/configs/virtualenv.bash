if [[ $OS_DISTRO == "arch" ]]
then
    export VIRTUALENVWRAPPER_PYTHON=$(which python2.7)
fi

if [[ -x $(which virtualenvwrapper.sh) ]]
then
    source $(which virtualenvwrapper.sh)
fi
