#!/bin/bash

echo "Updating local files with files from this repo..."

# update ZSH settings
cp zsh/.zshrc ~/.zshrc

# update windows terminal settings
WINDOWS_USERNAME=$(/mnt/c/Windows/system32/cmd.exe /c "echo %USERNAME%" | tr -d '\r\n')
WINDOWS_TERMINAL_SETTINGS_PATH="/mnt/c/Users/$WINDOWS_USERNAME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState"
cp windows-terminal/settings.json  "$WINDOWS_TERMINAL_SETTINGS_PATH/settings.json"

# update nvim files
cp nvim/init.vim ~/.config/nvim/init.vim
cp nvim/local_init.vim ~/.config/nvim/local_init.vim
cp nvim/local_bundles.vim ~/.config/nvim/local_bundles.vim
cp nvim/coc_init.vim ~/.config/nvim/coc_init.vim
cp nvim/coc-settings.json ~/.config/nvim/coc-settings.json

echo "Update local files complete"
