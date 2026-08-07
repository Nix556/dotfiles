[ -f "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"

setopt PROMPT_SUBST

HISTFILE=$XDG_CACHE_HOME/zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt EXTENDED_HISTORY

git_branch() {
    local branch=$(git branch --show-current 2>/dev/null)
    [[ -n $branch ]] && print " %F{#e5c07b}$branch%f"
}

PROMPT='%F{250}%n@%m%f %F{39}%2~%f$(git_branch) %# '
