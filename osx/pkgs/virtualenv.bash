if ! [[ -x $(which virtualenvwrapper.sh) ]]
then
    echo "Now install virtualenvwrapper."
    pip install virtualenvwrapper
    echo "Finished."
fi
