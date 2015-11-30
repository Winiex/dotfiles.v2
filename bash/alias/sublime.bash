if [[ $SYS_PLATFORM == "osx" ]]
then
    ls "/Applications/Sublime Text"* > /dev/null

    if [[ $? == "0" ]]
    then
        alias sublime="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
        return
    fi

    ls "${GLB_USER_HOME}/Applications/Sublime Text"* > /dev/null

    if [[ $? == "0" ]]
    then
        alias sublime="${GLB_USER_HOME}/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
        return
    fi
fi
