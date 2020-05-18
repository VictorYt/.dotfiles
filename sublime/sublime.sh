# Create Sublime Text directories as they don't exist until Sublime is opened
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Packages
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Install Package Control
curl "https://packagecontrol.io/Package%20Control.sublime-package" > ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package

# Install Custom Sublime Text settings
cp -r settings/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
cp -r settings/Anaconda.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
cp -r settings/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Create Python Build Systems
cp -r settings/Python-2.sublime-build ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
cp -r settings/Python-3.sublime-build ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Custom Settings For Theme
cp -r settings/Material-Theme-Darker.sublime-theme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Create symlink to ST3
ln -s ~/.dotfiles/sublime/User/ ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
