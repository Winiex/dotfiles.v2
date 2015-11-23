general_plugins=(alias-completion.plugin base.plugin.bash battery.plugin.bash browser.plugin.bash dirs.plugin.bash explain.plugin.bash extract.plugin.bash fasd.plugin.bash fzf.plugin.bash git.plugin.bash history.plugin.bash jekyll.plugin.bash jenv.plugin.bash less-pretty-cat.plugin nginx.plugin.bash projects.plugin.bash)
osx_plugins=(osx-timemachine.plugin osx.plugin.bash)
ubuntu_plugins=()
arch_plugins=()

if ! [[ -d $GLB_BASH_IT_HOME/plugins/enabled ]]
then
    mkdir $GLB_BASH_IT_HOME/plugins/enabled
fi

for general_plugin in ${general_plugins[@]}
do
    ln -s -f $GLB_BASH_IT_HOME/plugins/available/$general_plugin $GLB_BASH_IT_HOME/plugins/enabled/$general_plugin
done

if [[ $OS_DISTRO == "darwin" ]]
then
    for osx_plugin in ${osx_plugins[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/plugins/available/$osx_plugin $GLB_BASH_IT_HOME/plugins/enabled/$osx_plugin
    done
elif [[ $OS_DISTRO == "ubuntu" ]]
then
    for ubuntu_plugin in ${ubuntu_plugins[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/plugins/available/$ubuntu_plugin $GLB_BASH_IT_HOME/plugins/enabled/$ubuntu_plugin
    done
elif [[ $OS_DISTRO == "arch" ]]
then
    for arch_plugin in ${arch_plugins[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/plugins/available/$arch_plugin $GLB_BASH_IT_HOME/plugins/enabled/$arch_plugin
    done
fi
