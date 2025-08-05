# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases
alias gparted='GDK_BACKEND=x11 gparted'
alias ls='ls --color=auto'
alias grep='grep --color=auto'


# Define colors
GRAY='\[\e[90m\]' 
ORANGE='\[\e[38;5;214m\]'  # bright orange from 256-color palette
LIGHTBLUE='\[\e[94m\]'
LIGHTRED='\[\e[91m\]'
RESET='\[\e[0m\]'

# Get git branch function
parse_git_branch() {
  git branch 2>/dev/null | grep '*' | sed 's/* //'
}

# PS1
PS1="${GRAY}[\t] ${LIGHTBLUE} \u@\h${LIGHTBLUE}\$(git_branch=\$(parse_git_branch); if [ -n \"\$git_branch\" ]; then echo \" (\$git_branch)\"; fi) ${LIGHTRED}\w ${ORANGE}\$ ${RESET}"

EXIT_CODE=$?


# Default: PS1='[\u@\h \W]\$ '
. "$HOME/.aftman/env"
