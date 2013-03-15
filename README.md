#Мои настройки
В настройках поменять скорость отклика клавиатуры на максимальную
```bash
sudo ln -s /usr/bin/vim /usr/bin/e
brew install ack
brew install ctags
npm install jsctags
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.ctags
ln -s ~/dotfiles/snippets ~/.vim/snippets

#в vim
:BundleInstall
:!rm -rf ~/.vim/bundle/snipmate.vim/snippets/
```
