############################################
#### Ollieistic's Dotfiles Setup Script ####
############################################

# Symlink for .bashrc
ln -sf "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"

# Symlink for all Hypr configs
ln -sf "$HOME/dotfiles/hypr" "$HOME/.config/hypr"

# Symlink for Kitty config
ln -sf "$HOME/dotfiles/kitty" "$HOME/.config/kitty"

# Symlink for Rofi config
ln -sf "$HOME/dotfiles/rofi" "$HOME/.config/rofi"
 
# Check if "~/Pictures" exists and creates it if it doesn't
if [ ! -d "$HOME/Pictures" ]; then
    mkdir -p "$HOME/Pictures"
    echo "Created ~/Pictures directory."

# Symlink for wallpapers folder
ln -sf "$HOME/dotfiles/wallpapers" "$HOME/Pictures/wallpapers"
