general_complts=( bash-it.completion.bash defaults.completion.bash dirs.completion.bash django.completion.bash fabric-completion.bash gem.completion.bash git.completion.bash git_flow.completion.bash git_flow_avh.completion.bash maven.completion.bash pip.completion.bash ssh.completion.bash )
osx_complts=( brew.completion.bash )
ubuntu_complts=()
arch_complts=()

if ! [[ -d $GLB_BASH_IT_HOME/completion/enabled ]]
then
    mkdir $GLB_BASH_IT_HOME/completion/enabled
fi

for general_complt in "${general_complts[@]}"
do
    ln -s -f $GLB_BASH_IT_HOME/completion/available/$general_complt $GLB_BASH_IT_HOME/completion/enabled/$general_complt
done

if [[ $OS_DISTRO == "darwin" ]]
then
    for osx_complt in ${osx_complts[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/completion/available/$osx_complt $GLB_BASH_IT_HOME/completion/enabled/$osx_complt
    done
elif [[ $OS_DISTRO == "ubuntu" ]]
then
    for ubuntu_complt in ${ubuntu_complts[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/completion/available/$ubuntu_complt $GLB_BASH_IT_HOME/completion/enabled/$ubuntu_complt
    done
elif [[ $OS_DISTRO == "arch" ]]
then
    for arch_complt in ${arch_complts[@]}
    do
        ln -s -f $GLB_BASH_IT_HOME/completion/available/$arch_complt $GLB_BASH_IT_HOME/completion/enabled/$arch_complt
    done
fi
