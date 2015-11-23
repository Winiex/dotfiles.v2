general_aliases=(fuck.aliases.bash general.aliases.bash git.aliases.bash vim.aliases.bash)
osx_aliases=(homebrew-cask.aliases.bash homebrew.aliases.bash osx.aliases.bash)
ubuntu_aliases=(apt.aliases.bash clipboard.aliases.bash)
arch_aliases=(clipboard.aliases.bash)

if ! [[ -d $GLB_BASH_IT_HOME/aliases/enabled ]]
then
    mkdir $GLB_BASH_IT_HOME/aliases/enabled
fi

for general_alias in ${general_aliases[@]}
do
    ln -s -f $GLB_BASH_IT_HOME/aliases/available/$general_alias $GLB_BASH_IT_HOME/aliases/enabled/$general_alias
done

if [[ $OS_DISTRO == "darwin" ]]
then
    for osx_alias in ${osx_aliases[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/aliases/available/$osx_alias $GLB_BASH_IT_HOME/aliases/enabled/$osx_alias
    done
elif [[ $OS_DISTRO == "ubuntu" ]]
then
    for ubuntu_alias in ${ubuntu_aliases[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/aliases/available/$ubuntu_alias $GLB_BASH_IT_HOME/aliases/enabled/$ubuntu_alias
    done
elif [[ $OS_DISTRO == "arch" ]]
then
    for arch_alias in ${arch_aliases[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/aliases/available/$arch_alias $GLB_BASH_IT_HOME/aliases/enabled/$arch_alias
    done
fi
