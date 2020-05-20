#!/usr/bin/env bash

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Configuration files symbolic link
ln -fs ~/.dotfiles/zsh/.aliases ~/
ln -fs ~/.dotfiles/zsh/.zshrc ~/
