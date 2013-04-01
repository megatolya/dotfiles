
# ln -s /usr/bin/vim /usr/bin/e

mkdir -p ~/.zsh/func
ln -s "$(brew --prefix)/Library/Contributions/brew_zsh_completion.zsh" ~/.zsh/func/_brew
brew install ack
brew install ctags
npm install jsctags
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
ln -s ~/configs/my.zsh-theme ~/.oh-my-zsh/themes/my.zsh-theme
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.ctags
ln -s ~/dotfiles/snippets ~/.vim/snippets
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

curl -L http://smartcd.org/install | bash
source ~/.smartcd/lib/core/smartcd
