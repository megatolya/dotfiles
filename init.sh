#! /bin/bash
# ln -s /usr/bin/vim /usr/bin/e
#brew install ack

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
ln -s ~/dotfiles/my.zsh-theme ~/.oh-my-zsh/themes/my.zsh-theme
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

ln -s ~/dotfiles/.gitconfig ~/.gitconfig


mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/colors ~/.vim/colors

vim +BundleInstall +qa

rm -rf ~/.vim/bundle/snipmate.vim/snippets/
rm -rf ~/.vim/bundle/vim-template/templates
ln -s ~/dotfiles/templates ~/.vim/bundle/vim-template/templates
