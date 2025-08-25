# ~/.zshrc

# Path to Oh My Zsh
export ZSH="$HOME/.config/zsh/.oh-my-zsh"

# ZSH Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# ZSH Auto Suggestion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# ZSH Plugins
plugin=(git zsh-autosuggestions)

# Source Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# Source ZSH Syntax Highlighting
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# === END OF OH-MY-ZSH ===

# Variables
export QT_QPA_PLATFORMTHEME=qt5ct

# Aliases
alias ls='lsd'
alias grep='grep --color=auto'
alias p='sudo pacman'
alias nv='nvim'
