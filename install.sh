#!/usr/bin/env bash
#Run this script will install the dotfiles.

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

GLB_USER_HOME=$HOME
GLB_DOT_FILE_DIR=$GLB_USER_HOME/.dotfiles
GLB_VIM_HOME=$GLB_USER_HOME/.dotfiles/vim
GLB_TMUX_HOME=$GLB_USER_HOME/.dotfiles/tmux
GLB_BASH_HOME=$GLB_USER_HOME/.dotfiles/bash
GLB_BASH_IT_HOME=$GLB_USER_HOME/.dotfiles/bash/bash-it

GLB_OSX_INSTALL_HOME=$GLB_USER_HOME/.dotfiles/osx
GLB_UBUNTU_INSTALL_HOME=$GLB_USER_HOME/.dotfiles/ubuntu
GLB_ARCH_INSTALL_HOME=$GLB_USER_HOME/.dotfiles/arch

# Constants and functions for terminal colors.
# Author: Max Tsepkov <max@yogi.pw>
CLR_ESC="\033["

# All these variables has a function with the same name, but in lower case.
#
CLR_RESET=0             # reset all attributes to their defaults
CLR_RESET_UNDERLINE=24  # underline off
CLR_RESET_REVERSE=27    # reverse off
CLR_DEFAULT=39          # set underscore off, set default foreground color
CLR_DEFAULTB=49         # set default background color

CLR_BOLD=1              # set bold
CLR_BRIGHT=2            # set half-bright (simulated with color on a color display)
CLR_UNDERSCORE=4        # set underscore (simulated with color on a color display)
CLR_REVERSE=7           # set reverse video

CLR_BLACK=30            # set black foreground
CLR_RED=31              # set red foreground
CLR_GREEN=32            # set green foreground
CLR_BROWN=33            # set brown foreground
CLR_BLUE=34             # set blue foreground
CLR_MAGENTA=35          # set magenta foreground
CLR_CYAN=36             # set cyan foreground
CLR_WHITE=37            # set white foreground

CLR_BLACKB=40           # set black background
CLR_REDB=41             # set red background
CLR_GREENB=42           # set green background
CLR_BROWNB=43           # set brown background
CLR_BLUEB=44            # set blue background
CLR_MAGENTAB=45         # set magenta background
CLR_CYANB=46            # set cyan background
CLR_WHITEB=47           # set white background

# General function to wrap string with escape sequence(s).
# Ex: clr_escape foobar $CLR_RED $CLR_BOLD
function clr_escape
{
    local result="$1"
    until [ -z "$2" ]; do
    if ! [ $2 -ge 0 -a $2 -le 47 ] 2>/dev/null; then
        echo "clr_escape: argument \"$2\" is out of range" >&2 && return 1
    fi
        result="${CLR_ESC}${2}m${result}${CLR_ESC}${CLR_RESET}m"
    shift || break
    done

    echo -e "$result"
}

function clr_reset           { clr_escape "$1" $CLR_RESET;           }
function clr_reset_underline { clr_escape "$1" $CLR_RESET_UNDERLINE; }
function clr_reset_reverse   { clr_escape "$1" $CLR_RESET_REVERSE;   }
function clr_default         { clr_escape "$1" $CLR_DEFAULT;         }
function clr_defaultb        { clr_escape "$1" $CLR_DEFAULTB;        }
function clr_bold            { clr_escape "$1" $CLR_BOLD;            }
function clr_bright          { clr_escape "$1" $CLR_BRIGHT;          }
function clr_underscore      { clr_escape "$1" $CLR_UNDERSCORE;      }
function clr_reverse         { clr_escape "$1" $CLR_REVERSE;         }
function clr_black           { clr_escape "$1" $CLR_BLANK;           }
function clr_red             { clr_escape "$1" $CLR_RED;             }
function clr_green           { clr_escape "$1" $CLR_GREEN;           }
function clr_brown           { clr_escape "$1" $CLR_BROWN;           }
function clr_blue            { clr_escape "$1" $CLR_BLUE;            }
function clr_magenta         { clr_escape "$1" $CLR_MAGENTA;         }
function clr_cyan            { clr_escape "$1" $CLR_CYAN;            }
function clr_white           { clr_escape "$1" $CLR_WHITE;           }
function clr_blackb          { clr_escape "$1" $CLR_BLACKB;          }
function clr_redb            { clr_escape "$1" $CLR_REDB;            }
function clr_greenb          { clr_escape "$1" $CLR_GREENB;          }
function clr_brownb          { clr_escape "$1" $CLR_BROWNB;          }
function clr_blueb           { clr_escape "$1" $CLR_BLUEB;           }
function clr_magentab        { clr_escape "$1" $CLR_MAGENTAB;        }
function clr_cyanb           { clr_escape "$1" $CLR_CYANB;           }
function clr_whiteb          { clr_escape "$1" $CLR_WHITEB;          }

# Outputs colors table
function clr_dump
{
    local T='gYw'

    echo -e "\n                 40m     41m     42m     43m     44m     45m     46m     47m";

    for FGs in '   0m' '   1m' '  30m' '1;30m' '  31m' '1;31m' \
               '  32m' '1;32m' '  33m' '1;33m' '  34m' '1;34m' \
               '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m';
    do
        FG=${FGs// /}
        echo -en " $FGs \033[$FG  $T  "
        for BG in 40m 41m 42m 43m 44m 45m 46m 47m; do
            echo -en " \033[$FG\033[$BG  $T  \033[0m";
        done
        echo;
    done

    echo
    clr_bold "    Code     Function           Variable"
    echo \
'    0        clr_reset          $CLR_RESET
    1        clr_bold           $CLR_BOLD
    2        clr_bright         $CLR_BRIGHT
    4        clr_underscore     $CLR_UNDERSCORE
    7        clr_reverse        $CLR_REVERSE

    30       clr_black          $CLR_BLACK
    31       clr_red            $CLR_RED
    32       clr_green          $CLR_GREEN
    33       clr_brown          $CLR_BROWN
    34       clr_blue           $CLR_BLUE
    35       clr_magenta        $CLR_MAGENTA
    36       clr_cyan           $CLR_CYAN
    37       clr_white          $CLR_WHITE

    40       clr_blackb         $CLR_BLACKB
    41       clr_redb           $CLR_REDB
    42       clr_greenb         $CLR_GREENB
    43       clr_brownb         $CLR_BROWNB
    44       clr_blueb          $CLR_BLUEB
    45       clr_magentab       $CLR_MAGENTAB
    46       clr_cyanb          $CLR_CYANB
    47       clr_whiteb         $CLR_WHITEB
'
}

clr_green " __          ___       _           _       _____        _    __ _ _            "
clr_green " \ \        / (_)     (_)         ( )     |  __ \      | |  / _(_) |           "
clr_green "  \ \  /\  / / _ _ __  _  _____  _|/ ___  | |  | | ___ | |_| |_ _| | ___  ___  "
clr_green "   \ \/  \/ / | | '_ \| |/ _ \ \/ / / __| | |  | |/ _ \| __|  _| | |/ _ \/ __| "
clr_green "    \  /\  /  | | | | | |  __/>  <  \__ \ | |__| | (_) | |_| | | | |  __/\__ \ "
clr_green "     \/  \/   |_|_| |_|_|\___/_/\_\ |___/ |_____/ \___/ \__|_| |_|_|\___||___/ "

#Check whether the ~/.dotfiles directory exists.
if [[ -d ~/.dotfiles ]]
then
    clr_red "~/.dotfiles directory exists. Dotfiles already installed. Exit."
    exit 1
fi

#Clone the dotfiles from github.
#Use this childish ASCII art to make it rock a little bit.
printf "\n"
clr_green "#######################################"
clr_green "#  Now download basic dotfiles        #"
clr_green "#######################################"
printf "\n"

git clone --recursive https://github.com/Winiex/dotfiles.v2.git ~/.dotfiles

cd ~/.dotfiles
git remote set-url origin "git@github.com:Winiex/dotfiles.v2.git"

clr_green "#######################################"
clr_green "# Basic dotfiles installed.           #"
clr_green "# Everything is under control.        #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

#Install OS specified stuff.
printf "\n"
clr_green "#######################################"
clr_green "#  Now Install OS specified stuff     #"
clr_green "#######################################"
printf "\n"

if [[ $SYS_PLATFORM == "osx" ]]
then
    source $GLB_DOT_FILE_DIR/osx/install.sh
elif [[ $SYS_PLATFORM == "arch" ]]
then
    source $GLB_DOT_FILE_DIR/arch/install.sh
elif [[ $SYS_PLATFORM == "ubuntu" ]]
then
    source $GLB_DOT_FILE_DIR/ubuntu/install.sh
fi

clr_green "#######################################"
clr_green "# OS specified stuff installed.       #"
clr_green "# Life is short, choose a good OS.    #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

#Install bash configurations.
printf "\n"
clr_green "#######################################"
clr_green "#  Now install bash configurations    #"
clr_green "#######################################"
printf "\n"

source $GLB_DOT_FILE_DIR/bash/install.sh

clr_green "#######################################"
clr_green "# Bash configurations installed.      #"
clr_green "# Now your bash is your zsh.          #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

#Install vim configurations.
printf "\n"
clr_green "#######################################"
clr_green "#  Now install vim configurations     #"
clr_green "#######################################"
printf "\n"

source $GLB_DOT_FILE_DIR/vim/install.sh

clr_green "#######################################"
clr_green "# Vim configurations installed.       #"
clr_green "# Emacs is good, I choose vim.        #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

#Create repository directories.
printf "\n"
clr_green "#######################################"
clr_green "#  Now create repository directories  #"
clr_green "#######################################"
printf "\n"

if [ ! -d ~/repository ]; then
    mkdir ~/repository
fi

if [ ! -d ~/repository/code ]; then
    mkdir ~/repository/code
fi

if [ ! -d ~/repository/source ]; then
    mkdir "~/repository/source"
fi

if [ ! -d ~/repository/blog ]; then
    git clone --recursive git@github.com:Winiex/winiex.github.io.git ~/repository/blog
fi

clr_green "#######################################"
clr_green "# Repository created.                 #"
clr_green "# Put your stuff here, and sync it.   #"
clr_green "#                -- By winiex         #"
clr_green "#######################################"

printf "\n"
clr_green "#######################################"
clr_green "# Dotfiles installed successfully.    #"
clr_green "# My dotfiles will find you.          #"
clr_green "#                -- By winiex         #"
clr_green "# Contact Me: winiex.nie#gmail.com    #"
clr_green "#######################################"
printf "\n"
