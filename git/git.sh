#!/usr/bin/env bash

find ~/dotfiles/git -name '.git*' -print0 | xargs -0 -I file ln -fs file ~/

git config --global core.excludesfile ~/.dotfiles/git/.gitignore_global
# Have a look to the [masOS specific .gitignre](https://github.com/github/gitignore/tree/master/Global/masOS.gitignore)