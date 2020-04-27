#!/bin/bash

echo "Backing up local files to this repo..."

# backup ZSH settings
mkdir -p backups/zsh
cp ~/.zshrc backups/zsh/.zshrc

# backup windows terminal settings
mkdir -p backups/windows-terminal
WINDOWS_USERNAME=$(/mnt/c/Windows/system32/cmd.exe /c "echo %USERNAME%" | tr -d '\r\n')
WINDOWS_TERMINAL_SETTINGS_PATH="/mnt/c/Users/$WINDOWS_USERNAME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState"
cp "$WINDOWS_TERMINAL_SETTINGS_PATH/settings.json" backups/windows-terminal/settings.json

# backup nvim files
mkdir -p backups/nvim
cp ~/.config/nvim/init.vim backups/nvim/init.vim
cp ~/.config/nvim/local_init.vim backups/nvim/local_init.vim
cp ~/.config/nvim/local_bundles.vim backups/nvim/local_bundles.vim
cp ~/.config/nvim/coc_init.vim backups/nvim/coc_init.vim
cp ~/.config/nvim/coc-settings.json backups/nvim/coc-settings.json

echo "Backup local files complete"
