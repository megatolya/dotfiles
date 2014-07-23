#! /bin/bash

./links
./osx
./brew
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
ln -s ~/dotfiles/my.zsh-theme ~/.oh-my-zsh/themes/my.zsh-theme
rm ~/.zshrc

hg clone http://bitbucket.org/birkenfeld/pygments-main ~/pygments


mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle


vim +BundleInstall +qa

rm -rf ~/.vim/bundle/snipmate.vim/snippets/
rm -rf ~/.vim/bundle/vim-template/templates

ln -s ~/dotfiles/vim/snippets ~/.vim/bundle/snipmate.vim/snippets
ln -s ~/dotfiles/vim/templates ~/.vim/bundle/vim-template/templates

./npm
