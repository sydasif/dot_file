___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi


PS1="$PS1"'\[\033[35m\]'       # change to purple
PS1="$PS1"'\D{%H:%M:%S} '      # show current time
