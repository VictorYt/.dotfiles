# Sublime Text 3 settings and packages

For consistency with dotfiles for other apps, I put my Sublime Text 3 configuration in `~/sublime`. To ensure that Sublime Text can find this directory, I symlink `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User` to it. The installation rake task (see below) takes care of setting this up for you. Here's what my dotfiles specify for Sublime:

- Settings optimized for Python development
- Better auto-complete behavior
- Custom key bindings

## Color scheme

- Monokai (default)

## Packages

- A File Icon
- AdvancedNewFile
- Emmet
- GitGutter
- Material Theme
- Side Bar
- SublimeLinter
- Jedi
- SublimeCodeIntel

