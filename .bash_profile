parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\033[92m\]\w\033[94m\]\$(parse_git_branch)\033[92m\] > "

alias linode='ssh root@23.239.8.165'
alias vpn='ssh dustin@router2.ibm-sjc-1.ps.pn'
