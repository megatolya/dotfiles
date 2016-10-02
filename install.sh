is_mac=false

if [[ "$OSTYPE" == "darwin"* ]]; then
    is_mac=true
fi

install_osx_prefs () {
    echo "Changing osx defaults"
    ./osx
}

link_rc_files () {
    echo "Linking dotfiles"

    ln -sf ~/dotfiles/my.zsh-theme ~/.oh-my-zsh/themes/my.zsh-theme
    ln -sf ~/dotfiles/.zshrc ~/.zshrc
    ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
    ln -sf ~/dotfiles/.vimrc ~/.vimrc
    ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
    ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
}


if [ "$is_mac" = true ] ; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    else
        sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

link_rc_files

if [ "$is_mac" = true ] ; then
    install_osx_prefs
fi
