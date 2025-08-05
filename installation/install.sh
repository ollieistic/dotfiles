#!/bin/bash

# Define package list file
PACKAGE_LIST="packages.txt"

# Check if the package list file exists
if [ ! -f "$PACKAGE_LIST" ]; then
    echo "File not found: $PACKAGE_LIST"
    exit 1
fi

# Update the package repository
echo "Updating package repository..."
if ! sudo pacman -Syu; then
    echo "Failed to update package repository."
    exit 1
fi

# Install yay if not already installed
if ! command -v yay &> /dev/null; then
    echo "Installing AUR Helper 'yay'..."
    sudo pacman -S --noconfirm base-devel git

    # Clone the yay repository
    if git clone https://aur.archlinux.org/yay.git; then
        cd yay || exit
        
        # Build and install yay
        if ! makepkg -si --noconfirm; then
            echo "Failed to install yay."
            exit 1
        fi
        
        cd .. || exit
        rm -rf yay
    else
        echo "Failed to clone yay repository."
        exit 1
    fi
else
    echo "yay is already installed."
fi


# Install packages from the list
echo "Starting package installation..."
while IFS= read -r package; do
    if [ -n "$package" ]; then
        echo "Installing $package..."
        if ! sudo pacman -S --noconfirm "$package"; then
            echo "Failed to install $package"
        fi
    else
        echo "An empty line in packages.txt was detected and has been skipped."
    fi
done < "$PACKAGE_LIST"

echo "All packages have been processed."

# Define directories, lists, and exclusions
DOTFILES_DIR="$HOME/dotfiles"
WALLPAPERS_DIR="wallpapers"
EXCLUDE_LIST=("installation")
HOME_DIR_LIST=("scripts" "sounds")

# Ensure directories for wallpapers exist
mkdir -p ~/Pictures/
mkdir -p ~/Pictures/wallpapers

# Loop through each directory in ~/dotfiles and create symlinks for them accordingly
for source_dir in "$DOTFILES_DIR"/*; do
    if [ -d "$source_dir" ]; then
        package=$(basename "$source_dir")

        # Check if directory in ~/dotfiles is in 'EXCLUDE_LIST'
        if [[ " ${EXCLUDE_LIST[@]} " =~ " $package " ]]; then
            continue
        fi

        # Determine the target location based on the package name
        if [[ "$package" == "$WALLPAPERS_DIR" ]]; then
            target="$HOME/Pictures/wallpapers"  # Place in '~/Pictures/wallpapers' directory
        elif [[ " ${HOME_DIR_LIST[@]} " =~ " $package " ]]; then
            target="$HOME/$package"  # Place in 'HOME (~)' directory
        else
            target="$HOME/.config/$package"  # Place in '~/.config' directory
        fi

        # Check if target (directory or symlink) already exists and overwrite them
        if [ -e "$target" ]; then
            if [ -L "$target" ]; then
                rm "$target"  # Only remove symlink
            else
                rm -rf "$target"  # Remove directory
            fi
            echo "Removed existing directory or symlink: $target"
        fi

        # Create the symlink
        ln -sfn "$source_dir" "$target"  # Create a symlink
        echo "Created symlink for: $package"
    fi
done

echo "All symlinks have been created."