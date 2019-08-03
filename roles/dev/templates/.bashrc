if [[ "$(uname)" = 'Darwin' ]];then
    alias ls='ls -FG'
else
    alias ls='ls --color=auto -F'
fi
alias ll='ls -l'

# bash prompt
# default: PS1="\h:\W \u\$ "
source $HOME/.git-prompt.sh
export PS1='\[\e[2m\]\u@\h \W\[\e[0m\]\[\e[33m\]$(__git_ps1 " (%s)")\[\e[0m\]\n\$ '

export PATH="/home/{{ ansible_env.SUDO_USER }}/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
