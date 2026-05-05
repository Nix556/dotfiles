setopt PROMPT_SUBST

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# colors
ACCENT="#8bd5ca"
SUB="#cfcfcf"
DIM="#a8a8a8"
WHITE="#ffffff"

# user@host
user_host='%F{$ACCENT}%n@%m%f'

# path
current_dir='%F{$SUB}%~%f'

# git
git_branch() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  local branch
  branch=$(git symbolic-ref --quiet --short HEAD 2>/dev/null \
        || git rev-parse --short HEAD 2>/dev/null)
  echo " $branch"
}

# prompt
PROMPT="╭─${user_host} ${current_dir} \$(git_branch)
╰─%B%F{$WHITE}$%f%b "

# clock
RPROMPT="%F{$DIM}%*%f"