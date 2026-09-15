#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# =========================
# MODERN CLI TOOLS
# =========================

# lsd reemplaza ls
alias ls='lsd'
alias ll='lsd -lah'
alias la='lsd -a'
alias l='lsd -l'

# bat reemplaza cat
alias cat='bat --paging=never'

# Mostrar información del sistema al abrir una terminal interactiva
if [[ $- == *i* ]]; then
    fastfetch
fi
# Starship prompt
eval "$(starship init bash)"
