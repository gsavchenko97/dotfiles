# Exports
export PATH="$PATH:$HOME/.local/bin"

## Golang
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/.local/go/bin"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

## Rust
. "$HOME/.cargo/env"

## Python
export PATH="$PATH:$HOME/.pyenv/bin"
# init pyenv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

## setup for time utility
export TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

## setting for tmuxp
export DISABLE_AUTO_TITLE='true'

## setup for fzf utility
export FZF_DEFAULT_OPTS='--color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
