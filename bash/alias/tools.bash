alias save-clipboard="pbpaste | cat > ~/Desktop/clipboard.txt"
alias load-clipboard="cat ~/Desktop/clipboard.txt | pbcopy"
alias last-cmd="fc -ln -1 | xargs | pbcopy"
alias lbys="ls -alhS"
alias lbyt="ls -alht"
alias run-last-cmd='bash -c "$(fc -ln -1)" | pbcopy'
