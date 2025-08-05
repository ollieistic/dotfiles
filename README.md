> [!WARNING]
> These dotfiles are **ONLY** meant for my system.  
> There's no guarantee they will work out-of-the-box on yours.  
> Do NOT send in any PRs and/or issues.

## My Dotfiles
This repository contains all my dotfiles for my Arch Linux setup with Hyprlan. It includes my custom configurations for different apps and system settings. You'll find personalized settings for terminal emulators, text editors, and some key system tweaks, with most files written from scratch by me and a few made with help from the community.

## Installation
⚠️ **WARNING:** This will change your keyboard layout and mirror servers to swedish!

If you'd like to use my dotfiles, please run the following commands individually:
```
git clone https://github.com/ollieistic/dotfiles.git ~/dotfiles
cd ~/dotfiles/installation
./install.sh
```

If you cannot run `install.sh`, please run the following command:
```
chmod +x ~/dotfiles/installation/install.sh
```

The `install.sh` script will do the rest of the dotfiles setup for you.  

Here's what the script does:
- Install all packages from [packages.txt](/installation/packages.txt).
- Install Yay, a helper and tool for the AUR
- Create symlinks for config files and other directories


---

> [!NOTE]
> All wallpapers in this repository are **NOT** made or owned by me.  
> They are all found on places like [Reddit](https://reddit.com/r/UnixPorn), [Discord](https://discord.gg/linux) and [Unsplash](https://unsplash.com).