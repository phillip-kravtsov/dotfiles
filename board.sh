ssh-keygen -t ed25519 -C "phillip@kravtsov.net" -N "$PASSWORD" -f ~/.ssh/id_ed25519 <<<y >/dev/null 2>&1
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519 && cat ~/.ssh/id_ed25519.pub
echo "https://github.com/settings/ssh/new"
git remote add s git@github.com:phillip-kravtsov/dotfiles.git
