#!/bin/bash

# shellcheck source=distro.sh
. ../distro.sh
# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Installing ZSH with OH-MY-ZSH..."
_install zsh

# oh-my-zsh installation
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"

echo_info "Symlink .zshrc..."
ln -sfT "$HOME/.dotfiles/zsh/zshrc" "$HOME/.zshrc"

echo_info "Changing shell..."
chsh -s "$(command -v zsh)"

echo_done "ZSH configuration!"
