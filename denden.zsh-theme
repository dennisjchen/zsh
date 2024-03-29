local ret_status="%{$fg_bold[cyan]%}DenDen:"
PROMPT='${ret_status}%{$reset_color%}%{$fg[white]%}$(get_pwd)$(git_prompt_info)%{$fg_bold[cyan]%}→%{$reset_color%} '

function get_pwd() {
  echo '['%2c']'
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}"

