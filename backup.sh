#############################################
#### Ollieistic's Dotfiles Backup Script ####
#############################################


cd "$HOME/dotfiles" || exit 1

git add -A

if ! git diff --cached --quiet; then
    git commit -m "Automatic backup: $(date '+%Y-%m-%d %H:%M:%S')"
    
    git pull origin main --rebase
    git push origin main

    echo "Changes committed and pushed."
else
    echo "No changes to commit."
fi
