#!/bin/zsh

command_exists() {
    command -v "$@" >/dev/null 2>&1
}

if command_exists curl; then
    curl -fsSLo ~/.oh-my-zsh/custom/themes/robbyrussell-custom.zsh-theme https://raw.github.com/chingxuds/ohmyzsh-custom/master/robbyrussell-custom.zsh-theme
elif command_exists wget; then
    wget https://raw.github.com/chingxuds/ohmyzsh-custom/master/robbyrussell-custom.zsh-theme -O ~/.oh-my-zsh/custom/themes/robbyrussell-custom.zsh-theme
else
    echo "Please install curl or wget first!"
fi

sed -i 's/ZSH_THEME=".*"/ZSH_THEME="robbyrussell-custom"/g' ~/.zshrc

source ~/.zshrc