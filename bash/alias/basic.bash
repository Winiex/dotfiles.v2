#Basic alias
alias ..='cd ..'
alias ...='cd ../..'
alias c='cd'
alias c..='cd ..'
alias c...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias ~='cd ~'
alias cdownload='cd ~/download'
alias cposts='cblog && cd source/_posts'
alias crepo='cd ~/repository'
alias ccode='cd ~/repository/code'
alias csource='cd ~/repository/source'
alias cdocs='cd ~/repository/docs'
alias cxcode='cd ~/repository/xcode-workspace'
alias cplay='cd ~/repository/play'
alias cblog='cd ~/repository/blog'
alias cdesktop='cd ~/Desktop'
alias ctmp='cd ~/tmp'
alias cdemo='cd ~/repository/demo'
alias calpha='cd ~/mnt/alpha'
alias cl='clear'
alias gaa='git add .'
alias gv='gvim'
alias dstat='dstat -cdlmnpsy'
alias ll='ls -al'
alias j='jobs'
alias o=open

if [[ $SYS_PLATFORM == "linux" ]]
then
    alias open="xdg-open"
fi
