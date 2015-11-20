general_aliases=(fuck.aliases.bash general.aliases.bash git.aliases.bash vim.aliases.bash)
osx_aliases=(homebrew-cask.aliases.bash homebrew.aliases.bash osx.aliases.bash)
ubuntu_aliases=(apt.aliases.bash clipboard.aliases.bash)
arch_aliases=(clipboard.aliases.bash)

if ! [[ -d ./bash-it/aliases/enabled ]]
then
    mkdir ./bash-it/aliases/enabled

    for general_alias in $general_aliases
    do
        ln -s -f $GLB_DOT_FILE_DIR/bash/bash-it/aliases/available/$general_alias $GLB_DOT_FILE_DIR/bash/bash-it/enabled/$general_alias

        if [[ $OS_DISTRO == "darwin" ]]
        then
            for osx_alias in $osx_aliases
            do
                ln -s -f $GLB_DOT_FILE_DIR/bash/bash-it/aliases/available/$osx_alias $GLB_DOT_FILE_DIR/bash/bash-it/enabled/$osx_alias
            done
        elif [[ $OS_DISTRO == "ubuntu" ]]
        then
            for ubuntu_alias in $ubuntu_aliases
            do
                ln -s -f $GLB_DOT_FILE_DIR/bash/bash-it/aliases/available/$ubuntu_alias $GLB_DOT_FILE_DIR/bash/bash-it/enabled/$ubuntu_alias
            done
        elif [[ $OS_DISTRO == "arch" ]]
        then
            for arch_alias in $arch_aliases
            do
                ln -s -f $GLB_DOT_FILE_DIR/bash/bash-it/aliases/available/$arch_alias $GLB_DOT_FILE_DIR/bash/bash-it/enabled/$arch_alias
            done
        fi
    done
fi
