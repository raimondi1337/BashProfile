# column ls with color coding
alias ls='ls -1 -G'

# quickly convert a video to gif with optional resize
function gif() {
    ffmpeg -i "$1" $(if [ x"$2" != x ]; then echo "-vh scale=${2}:-1 "; fi) -pix_fmt rgb24 -r 10 -threads 8 -y output.gif
}

# grab git branch to insert into prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[92m\]\W\[\e[34m\]\$(parse_git_branch)\[\e[92m\] > "
