echo "Install and configure all I require for dev"
sudo apt-get install vim
sudo apt-get install curl

echo "Add autoload plagin pathogen for autoload in vim"
if [ -d "~/.vim/autoload" ]; then
    echo 'lol'
    mkdir -p ~/.vim/autoload
fi
if [ -d "~/.vim/bundle" ]; then
    mkdir -p ~/.vim/bundle
fi
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "Add loading pathogen to vimrc"
if [ ! -f ~/.vimrc ]; then
    echo "do do"
    touch ~/.vimrc
fi
if ! grep -Fxq "call pathogen#incubate()" ~/.vimrc; then
    echo "call pathogen#incubate()" > ~/.vimrc
fi

echo "Install NERDTree plagin for vim"
if [ -d "~/.vim/bundle/nerdtree" ]; then
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
else
    cd ~/.vim/bundle/nerdtree
    git pull
fi
cd ~/env


