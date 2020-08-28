export ZSH="/home/gsavchenko/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

export UPDATE_ZSH_DAYS=14

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

bindkey '^ ' autosuggest-accept

alias vim="nvim"

TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

