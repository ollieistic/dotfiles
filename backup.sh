#############################################
#### Ollieistic's Dotfiles Backup Script ####
#############################################


cd "$HOME/dotfiles" || exit

git add .
git commit -m "Auto backup: $(date '+%Y-%m-%d %H:%M:%S')" || echo "No changes to commit"
git push origin main

