############################################
#### Ollieistic's Dotfiles Setup Script ####
############################################

# Symlink for .bashrc
ln -sf "$HOME/dotfiles/bashrc" "$HOME/.bashrc"

# Symlink for all Hypr configs
ln -sf "$HOME/dotfiles/hypr" "$HOME/.config/hypr"

# Symlink for Kitty config
ln -sf "$HOME/dotfiles/kitty" "$HOME/.config/kitty"

# Symlink for Rofi config
ln -sf "$HOME/dotfiles/rofi" "$HOME/.config/rofi"
 
# Symlink for wallpapers folder
ln -sf "$HOME/dotfiles/wallpapers" "$HOME/Pictures/wallpapers"
