############################################
#### Ollieistic's Dotfiles Setup Script ####
############################################

# Symlink for .bashrc
ln -sf "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"

# Symlink for all Hypr configs
ln -sf "$HOME/dotfiles/hypr" "$HOME/.config/hypr"

# Symlink for Kitty config
ln -sf "$HOME/dotfiles/kitty" "$HOME/.config/kitty"

# Symlink for wallpapers
ln -sf "$HOME/dotfiles/wallpapers" "$HOME/Pictures/wallpapers"
