___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi


PS1="$PS1"'\[\033[35m\]'       # change to purple
PS1="$PS1"'\D{%H:%M:%S} '      # show current time

export PS1="\n\[\033[1;36m\]┌─[\[\033[1;33m\]\u\[\033[1;36m\]]─[\[\033[1;31m\]\w\[\033[1;36m\]]\n\[\033[1;36m\]└─>\[\033[0m\] "
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

