#Мои настройки

```
brew install ack
brew install ctags
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s ~/configs/.vimrc ~/.vimrc
ln -s ~/configs/snippets ~/.vim/snippets

#в vim
:BundleInstall
:!rm -rf ~/.vim/bundle/snipMate/snippets
```
