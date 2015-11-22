# Get platform and disto of the system
__uname_all=`uname -a`

if [[ "$__uname_all" == *Darwin* ]]
then
    # OS X
    SYS_PLATFORM="osx"
    OS_DISTRO="darwin"
elif [[ "$__uname_all" == *Ubuntu* ]]
then
    # Ubuntu Linux
    SYS_PLATFORM="linux"
    OS_DISTRO="ubuntu"
elif [[ "$__uname_all" == *Arch* ]]
then
    # Arch Linux
    SYS_PLATFORM="linux"
    OS_DISTRO="arch"
fi