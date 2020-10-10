if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PS1="\[\e[38;5;051;48;5;233m\]\u@\h \W $ \[\e[0m\]"



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kevin.fu/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kevin.fu/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kevin.fu/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kevin.fu/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

