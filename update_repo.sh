#!/bin/bash

echo "Updating repo with local files..."

# pull in ZSH settings
cp ~/.zshrc zsh/.zshrc

# pull in windows terminal settings
WINDOWS_USERNAME=$(/mnt/c/Windows/system32/cmd.exe /c "echo %USERNAME%" | tr -d '\r\n')
WINDOWS_TERMINAL_SETTINGS_PATH="/mnt/c/Users/$WINDOWS_USERNAME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState"
cp "$WINDOWS_TERMINAL_SETTINGS_PATH/settings.json" windows-terminal/settings.json

# pull in nvim files
cp ~/.config/nvim/init.vim nvim/init.vim
cp ~/.config/nvim/local_init.vim nvim/local_init.vim
cp ~/.config/nvim/local_bundles.vim nvim/local_bundles.vim
cp ~/.config/nvim/coc_init.vim nvim/coc_init.vim
cp ~/.config/nvim/coc-settings.json nvim/coc-settings.json

echo "Update repo complete"
