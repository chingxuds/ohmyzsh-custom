#!/bin/zsh

command_exists() {
    command -v "$@" >/dev/null 2>&1
}

if command_exists curl; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    curl -fsSLo ~/.oh-my-zsh/custom/themes/robbyrussell-custom.zsh-theme https://raw.github.com/chingxuds/ohmyzsh-custom/master/robbyrussell-custom.zsh-theme
elif command_exists wget; then
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    wget https://raw.github.com/chingxuds/ohmyzsh-custom/master/robbyrussell-custom.zsh-theme -O ~/.oh-my-zsh/custom/themes/robbyrussell-custom.zsh-theme
else
    echo "Please install curl or wget first!"
fi

sed -i 's/ZSH_THEME=".*"/ZSH_THEME="robbyrussell-custom"/g' ~/.zshrc

source ~/.zshrc