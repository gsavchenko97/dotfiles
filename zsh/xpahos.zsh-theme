ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(git_current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(git_current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

machine_with_color() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "{$FG[001]%}%m%{$reset_color%}"
  else
    echo "{$FG[178]%}%m%{$reset_color%}"
  fi
}

user_with_color() {
  echo "{$FG[035]%}[%n]%{$reset_color%}"
}

full_path_with_color() {
  echo "{$FG[004]%}[%/% ]%{$reset_color%}"
}

PROMPT='%$(machine_with_color) %$(user_with_color) %$(full_path_with_color)%b '
