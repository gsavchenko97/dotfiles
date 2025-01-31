## Rust
. "$HOME/.cargo/env"

## Python
# init pyenv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

## setup for fzf utility
# export FZF_DEFAULT_OPTS='--color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
