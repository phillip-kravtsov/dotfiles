# keep it simple for now

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.zshrc   # or source "${ZDOTDIR:-$HOME}/.zshrc"
