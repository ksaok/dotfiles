# The following lines were added by compinstall
zstyle :compinstall filename '/home/ksaok/.zshrc'

autoload -Uz compinit
compinit
#autoload -U promptinit
#promptinit
#prompt redhat
powerline-daemon -q
. /usr/lib/python3.9/site-packages/powerline/bindings/zsh/powerline.zsh
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt HIST_IGNORE_SPACE
# for '
setopt rcquotes
bindkey -e
# End of lines configured by zsh-newuser-install
# Variables
LESS="-R"
EDITOR="/usr/bin/vim"
PAGER="/usr/bin/less -R"
QT_STYLE_OVERRIDE=kvantum
PATH="${PATH}:/home/ksaok/.bin"
# Aliases
alias ls="ls --color"
alias vi="vim"
alias bc="bc -l"
alias grep="grep --color -n"
alias less="less -R"
alias activate="source ./env/bin/activate"
alias glog="git log --graph --oneline --all"
alias gupdate="git fetch && git checkout master && git pull"
alias gsync="git fetch && git merge origin/master"
alias gco="git checkout"
alias gdiff="git diff HEAD~1 HEAD"
alias docadm="tmux rename-window admin-shell && docker exec -it adminka bash && tmux rename-window zsh"
alias doccor="tmux rename-window core-shell && docker exec -it service_core bash && tmux rename-window zsh"
# Bindkeys
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[A" up-line-or-search
bindkey "^[[B" down-line-or-search
bindkey "^[[1;5A" up-line-or-history
bindkey "^[[1;5B" down-line-or-history
bindkey "[1;3A" history-beginning-search-backward
bindkey "[1;3B" history-beginning-search-forward
bindkey "[1;5F" end-of-history
bindkey "^?" backward-delete-word
#banner welcom to hell -f2 -C -c \(
#chafa ~/icons/tux.png
