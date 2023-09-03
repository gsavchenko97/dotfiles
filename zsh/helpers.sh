# User configuration
## aliases
alias v="nvim"
alias vim="nvim -u ~/setup/neovim-config-minimal/init.lua"
alias c='xclip -selection clipboard'
alias gco="git br | fzf | xargs git co"
alias grm="git br | fzf | xargs git br -D"

## quick cd
qcd() {
  case "$1" in
    df)
      cd $HOME/setup/dotfiles
      ;;
    apps)
      cd $HOME/txt/dev/installation/apps
      ;;
    cpp)
      cd $HOME/shad/cpp0
      ;;
    *)
      echo "qcd: unknown key '$1'"
      return 1
      ;;
  esac
  pwd
}
complete -W "apps df cpp" qcd

## doc
doc() {
  case "$1" in
    cpp1)
      v $HOME/txt/study/courses/cpp1.md
      ;;
    cpp2)
      v $HOME/txt/study/courses/cpp2.md
      ;;
    algo1)
      v $HOME/txt/study/courses/algo1.md
      ;;
    algo2)
      v $HOME/txt/study/courses/algo2.md
      ;;
    concurrency)
      v $HOME/txt/study/courses/concurrency.md
      ;;
    os)
      v $HOME/txt/study/courses/os.md
      ;;
    dist)
      v $HOME/txt/study/courses/dist.md
      ;;
    go)
      v $HOME/txt/study/courses/go.md
      ;;
    rust)
      v $HOME/txt/study/courses/rust.md
      ;;
    py)
      v $HOME/txt/study/courses/python.md
      ;;
    *)
      echo "doc: unknown key '$1'"
      return 1
      ;;
  esac
}
complete -W "algo1 algo2 cpp1 cpp2 concurrency os dist rust go py" doc


## add directories to $PATH
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.pyenv/bin"
# export PATH="$PATH:/usr/local/go/bin"
# export PATH="$PATH:$HOME/.local/go/bin"
# . "$HOME/.cargo/env"

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
