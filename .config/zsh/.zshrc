# ~/.zshrc

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
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return
    print "%F{#9aa0a6}git:%f%F{#1793d0}$branch%f"
}

PROMPT='%F{#e6e6e6}%n%F{#9aa0a6}@%F{#e6e6e6}%m%f %~ $(git_branch)%F{#1793d0}❯%f '
