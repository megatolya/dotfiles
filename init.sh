#! /bin/bash
# ln -s /usr/bin/vim /usr/bin/e
#sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/subl
#brew install colordiff
#brew install ack

./osx
./brew
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
ln -s ~/dotfiles/my.zsh-theme ~/.oh-my-zsh/themes/my.zsh-theme
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

ln -s ~/dotfiles/.gitconfig ~/.gitconfig

hg clone http://bitbucket.org/birkenfeld/pygments-main ~/pygments


mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s ~/dotfiles/.vimrc ~/.vimrc

vim +BundleInstall +qa

rm -rf ~/.vim/bundle/snipmate.vim/snippets/
rm -rf ~/.vim/bundle/vim-template/templates

ln -s ~/dotfiles/vim/snippets ~/.vim/bundle/snipmate.vim/snippets
ln -s ~/dotfiles/vim/templates ~/.vim/bundle/vim-template/templates

./npm
