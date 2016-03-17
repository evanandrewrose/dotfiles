alias reload!='. ~/.zshrc'
alias tmux="tmux -2" # start tmux in 256-bit color mode
alias haste="HASTE_SERVER=http://hastebin.videon-central.net/ haste"
alias gr='ack-grep -i'
alias full='readlink -f'
alias clip='xclip -sel clip' # | copy for clipboard
alias cliphaste='xclip -o haste' # | copy for clipboard
alias pyprof='python -m cProfile'
alias lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative" # pretty/short git log
alias please='sudo !!'
alias tmux="tmux -2" # start tmux in 256-bit color mode
alias gr='ACK_PAGER_COLOR="less -x4SRFX" ack-grep -i'
alias clionfail='ibus-daemon -rd' # restart input daemon
alias clionfuck='pkill -9 java' # kill java processes
alias plop='git stash' # restart input daemon
alias pop='git stash pop' # restart input daemon
alias less='less -R' # less colors
alias nocolor='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'
alias emacs='TERM=xterm-256color emacs -nw'
