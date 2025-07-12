############################################
#### Ollieistic's Dotfiles Setup Script ####
############################################

# Symlink .bashrc
ln -sf "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"

# Symlink Hyprland config
ln -sf "$HOME/dotfiles/.config/hyprland/hyprland.conf" "$HOME/.config/hyprland/hyprland.conf"

# Symlink kitty config
ln -sf "$HOME/dotfiles/.config/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
