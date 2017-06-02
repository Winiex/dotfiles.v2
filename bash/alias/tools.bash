alias save-clipboard="pbpaste | cat > ~/Desktop/clipboard.txt"
alias load-clipboard="cat ~/Desktop/clipboard.txt | pbcopy"
alias last-cmd="fc -ln -1 | xargs echo | pbcopy"
alias exec-last-cmd='bash -c "$(fc -ln -1)"'
alias lbys="ls -alhS"
alias lbyt="ls -alht"
