# install and configure all I require for dev


# add autoload plagin pathogen for autoload in vim
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# add loading pathogen to vimrc
touch ~/.vimrc
echo "call pathogen#incubate()" > ~/.vimrc

# install NERDTree plagin for vim
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git  


