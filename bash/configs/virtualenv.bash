# In arch linux, python's default version is python 3000
if [[ $OS_DISTRO == "arch" ]]
then
    export VIRTUALENVWRAPPER_PYTHON=$(which python2.7)
fi

# Load virtualenvwrapper.sh
if [[ -x $(which virtualenvwrapper.sh) ]]
then
    source $(which virtualenvwrapper.sh)
fi
