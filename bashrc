####################
####  ~/.bashrc ####
####################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#################
#### Aliases ####
#################

alias wofidark='GTK_THEME=Adwaita:dark wofi --show drun'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Add flatpaks to wofi
export XDG_DATA_DIRS=/var/lib/flatpak/exports/share:/usr/local/share:/usr/share


#############################
#### Shell Customization ####
#############################

# Define colors
ORANGE='\[\e[38;5;214m\]'  # bright orange from 256-color palette
LIGHTBLUE='\[\e[94m\]'
LIGHTRED='\[\e[91m\]'
RESET='\[\e[0m\]'

# Customize PS1:
# hostname, username in light blue; directory in light red; $ in orange
PS1=" ${LIGHTBLUE}\u@${LIGHTBLUE}\h ${LIGHTRED}\w ${ORANGE}\$ ${RESET}"


parse_git_branch() {
  git branch 2>/dev/null | grep '*' | sed 's/* //'
}

EXIT_CODE=$?


# Default: PS1='[\u@\h \W]\$ '


################
#### Cursor ####
################

export XCURSOR_THEME=Bibata
export XCURSOR_SIZE=20
