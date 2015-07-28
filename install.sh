is_mac=false

if [[ "$OSTYPE" == "darwin"* ]]; then
    is_mac=true
fi

install_oh_my_zsh () {
    echo "Installing oh-my-zsh"
    if [ "$1" = true ] ; then
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    else
        sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    fi
}

install_osx_prefs () {
    echo "Changing osx defaults"
    ./osx
}

install_npm_packages () {
    echo "Installing npm packages"
    packages=(
        grunt-cli
        gulp
        jshint
        phantomjs
        gist-cli
        yeoman
        express
        enb
        borschik
    )
    for package in "${packages[@]}"
    do
        npm install -g $package
    done
}

install_brew () {
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

install_brew_packages () {
    echo "Installing brew packages"

    formulas=(
        ack
        android-sdk
        cmake colordiff
        imagemagick
        jq
        macvim
        mercurial
        mongodb
        node
        nvm
        python
        python3
        reattach-to-user-namespace
        tmux
        tree
    )
    for formula in "${formulas[@]}"
    do
        versions=`brew ls --versions $formula`
        if [[ ! -z $versions ]] ; then
            echo $formula " is already installed"
        else
            brew install $formula
        fi
    done
}

link_rc_files () {
    echo "Linking dotfiles"

    ln -sf ~/dotfiles/my.zsh-theme ~/.oh-my-zsh/themes/my.zsh-theme
    ln -sf ~/dotfiles/.zshrc ~/.zshrc
    ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
    ln -sf ~/dotfiles/.vimrc ~/.vimrc
    ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
    ln -sf ~/dotfiles/.ackrc ~/.ackrc
    ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
}

install_vundle () {
    "Installing Vundle"
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

check_command () {
    echo "Checking command" $1
    output=`command -v $1`
    if [[ -z $output ]] ; then
        echo "Command not found" $1 ":("
        exit 1
    fi
    echo "Command" $1 "is ok"
}

check_requirements () {
    echo "Checking requirements"
    if [ "$1" = true ] ; then
        commands=(
            git
            ruby
            ololo
        )
    else
        commands=(
            git
        )
    fi

    for command_to_test in "${commands[@]}"
    do
        check_command $command_to_test
    done
}

check_requirements $is_mac

link_rc_files
install_oh_my_zsh $is_mac
install_npm_packages

if [ "$is_mac" = true ] ; then
    install_osx_prefs
    install_brew
    install_brew_packages
fi

install_vundle
