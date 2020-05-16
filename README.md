# .dotfiles

This is my dotfiles for my system customizations and to setup my development environment.

[png screenshot]


## What's included ?

+ Homebrew
  + Installs Homebrew AND brew install's all of my favourite packages
  + Uses homebrew-cask to install all my applications
+ RVM
+ macOS
  + Installs applications via the Mac App Store
+ Git
  + Git config
  + Global gitignore
+ Vim config
+ SSH config
+ Oh-My-Zsh
  + Robbyrussell theme
  + Aliases
+ iTerm2 colors theme
+ Sublime-text configuration

## How to use it ?

Clone the project in your home directory :

```bash
$ cd ~
$ xcode-select --install
$ git clone 
$ cd dotfiles
$ find ~/dotfiles -name '*.sh' | xargs -I file chmod u+x file # Make sure you can execute the scripts
$ make install
```

**Before running any commands, you must edit files according to your needs.**

For exemple, open the `brew/Brewfile` and remove applications you don't want to install from the list.

## Installation

### Brew

Packages and applications are installed with [https://brew.sh/](https://brew.sh/).

```bash
$ brew/brew.sh
```

### Sensible macOS defaults

```bash
$ macOS/macos.sh
```

### Git

```bash
$ git/git.sh
```

### Vim

```bash
$ vim/vim.sh
```

### SSH

```bash
$ ssh/ssh.sh
```

### ZSH

```bash
$ zsh/zsh.sh
```

### iTerm2

```bash
$ iTerm2/iterm.sh
```

Once the theme is downloaded, you can modify your iTerm2 settings in the app.

### Sublime-text

```bash
$ sublimetext/sublimetext.sh
```
