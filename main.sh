#! /bin/bash

CURRENT_DIR=$(pwd)

printProgress() {
    echo "-----> $1"
}

backup() {
  target=$1
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      mv "$target" "$target.backup"
      printProgress "Moved your old $target config file to $target.backup"
    fi
  fi
}

symlink() {
  file=$1
  link=$2
  if [ ! -e "$link" ]; then
    printProgress "Symlinking your new $link"
    ln -s "$file" "$link"
  fi
}

# dotfile
for name in aliases gitconfig zshrc vimrc.local; do
  if [ ! -d "$name" ]; then
    target="$HOME/.$name"
    backup "$target"
    symlink "$PWD/$name" "$target"
  fi
done

# zsh-plugin
ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"
mkdir -p "$ZSH_PLUGINS_DIR"
for name in zsh-syntax-highlighting zsh-autosuggestions;do
    if [ ! -d "$ZSH_PLUGINS_DIR/$name" ]; then
    printProgress "Installing zsh plugin $name..."
    git clone https://github.com/zsh-users/"$name" "$ZSH_PLUGINS_DIR/$name"
    fi
done

exec zsh