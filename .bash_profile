alias ls='ls -1 --color=auto'
alias linode='ssh root@23.239.8.165'
alias server='ssh dustin@54.241.191.112'
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[92m\]\W\[\e[34m\]\$(parse_git_branch)\[\e[92m\] > "
