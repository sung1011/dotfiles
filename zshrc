# var
export PATH=$HOME/go/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

export GO111MODULE="auto"
export GOPRIVATE="github.com/murphy-yy/,git.panlonggame.com"

export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
export http_proxy="http://127.0.0.1:7890"
export https_proxy=$http_proxy

# export EDITOR=code

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# theme
ZSH_THEME="arrow"

# plugins
plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
)

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# alias
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"

# gvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# z
eval "$(zoxide init zsh)"