setopt PROMPT_SUBST

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

RED="#c92a1a"
ORANGE="#e6a34a"
YELLOW="#f5c26b"
WHITE="#ddd6cf"
DIM="#6b625b"

git_branch() {
  git rev-parse --is-inside-work-tree &>/dev/null || return

  local branch
  branch=$(git symbolic-ref --quiet --short HEAD 2>/dev/null \
        || git rev-parse --short HEAD 2>/dev/null)

  echo " %F{$DIM}on%f %F{$YELLOW}${branch}%f"
}

PROMPT='╭─ %F{$ORANGE}%n@%m%f %F{$WHITE}%3~%f$(git_branch)
╰─ %F{$WHITE}$%f '