#! /bin/bash

cur_path=$(cd `dirname $0`; pwd)
webroot_path=$HOME/webroot

cd "$HOME" || exit

# manual installs
# 钉钉, 百度云盘, vscode, qq, 微信, 迅雷, 爱奇艺, 优酷, 腾讯视频

# oh-my-zsh
#
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh

# zsh plugins
#
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# spf13-vim
#
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

# brew
#
BREW_FORMULA="autojump fzf gawk git go htop iftop jq ncdu nginx nvm php@7.1 php-cs-fixer rabbitmq redis sqlite stress telnet tree vim watch wget mpv"

BREW_APP="dash snipaste iterm2 alfred the-unarchiver docker adobe-acrobat-reader google-chrome"

brew install "$BREW_FORMULA"
brew cask install "$BREW_APP"

# clone

mkdir -p "$webroot_path"
cd "$webroot_path" || exit
git clone git@github.com:sung1011/note.git
git clone git@github.com:sung1011/pv.git
git clone git@github.com:sung1011/g-etc.git
git clone git@github.com:sung1011/wk.git
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git
cd "$HOME" || exit;

# login
#
grep -i -E 'docker | github | xunlei | zhihu | apple | google | baidu | dingding' "$webroot_path/pv/s.md"


