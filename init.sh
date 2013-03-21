ln -s /usr/bin/vim /usr/bin/e
brew install ack
brew install ctags
npm install jsctags
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
ln -s ~/dotfiles/my.zsh-theme ~/.oh-my-zsh/themes/my.zsh-theme
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.ctags
ln -s ~/dotfiles/snippets ~/.vim/snippets
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
rm -rf ~/.vim/bundle/snipmate.vim/snippets/
ln -s ~/dotfiles/colors ~/.vim/colors
