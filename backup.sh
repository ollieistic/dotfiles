#############################################
#### Ollieistic's Dotfiles Backup Script ####
#############################################


cd "$HOME/dotfiles" || exit 1

git fetch origin main
git pull origin main --rebase

git add .

if ! git diff --cached --quiet; then
    git commit -m "Automated backup: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
else
    echo "No changes to commit."
fi
