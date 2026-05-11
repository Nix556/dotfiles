setopt PROMPT_SUBST

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# colors
RED="#c92a1a"
ORANGE="#e6a34a"
YELLOW="#f5c26b"
WHITE="#ddd6cf"
DIM="#6b625b"

# user@host
user_host='%F{$ORANGE}%n@%m%f'
# path
current_dir='%F{$WHITE}%~%f'

# git
git_branch() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  local branch
  branch=$(git symbolic-ref --quiet --short HEAD 2>/dev/null \
        || git rev-parse --short HEAD 2>/dev/null)
  echo "%F{$DIM}git:%F{$WHITE}$branch%f"
}

# prompt
PROMPT="╭─${user_host} ${current_dir} \$(git_branch)
╰─%F{$WHITE}$%f "

# clock
RPROMPT="%F{$DIM}%*%f"