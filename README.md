# Dotfiles

A home for my various settings and dotfiles

Mostly I'm trying to learn VIM and would like a consistent setup :)

## Fonts

1. [Delugia Nerd Font](https://github.com/adam7/delugia-code/releases)
2. [Victor Mono](https://github.com/rubjo/victor-mono/releases)

## Installation

### Transparency

To see a full list of the files that will be updated please review the `install.sh` script

### Backup

To backup your local files run the following command from inside this repo:

```sh
bash backup.sh
```

This will create a directory called `backups` within this repo with your various local settings files.

**NOTE**: if you run this command after running the install command below, you will essentially overwrite your backup files with the ones from this repo. So only run this command before running the install command below

### Install

To copy the various settings files from this repo to your local files, run the following command from inside this repo:

```sh
bash install.sh
```

### Post Install

You'll still have to implement the updated files within your various programs. For example:

- run `zsh` in your terminal to restart ZSH with it's updated configuration
- within NVIM you'll have to run `PlugInstall`

## Updating Repo

To copy the files within this repo with your local files, run the following command from inside this repo:

```sh
bash update_repo.sh
```
