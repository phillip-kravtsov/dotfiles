sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
git config --global user.name "Phillip Kravtsov"
git config --global user.email "phillip@kravtsov.net"
git config --global core.editor vim

