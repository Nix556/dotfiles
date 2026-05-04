# prompt behavior
setopt PROMPT_SUBST

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# colors
FG="#e6e6e6"
DIM="#a8a8a8"
SUB="#cfcfcf"
ACCENT="#8bd5ca"
WHITE="#ffffff"

# git branch
git_branch() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  echo " %F{$ACCENT} $(git branch --show-current)%f"
}

# prompt
PROMPT='%F{$DIM}%n@%m%f$(git_branch)
%F{$ACCENT}➜ %f'

RPROMPT='%F{$SUB}%~%f  %F{$DIM}%*%f'