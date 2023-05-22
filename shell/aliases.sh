# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."

alias ~="cd ~"
alias cls="clear"
alias dotfiles='cd $DOTFILES_PATH'
alias dot='./$DOTFILES_PATH/install'

alias exa='exa -laFh --git'
alias ls='exa'
alias ll='ls'

alias tree='ls --tree --level=2'
alias tree_all='ls --tree'
alias man=batman

alias brew_save='brew bundle dump --force --describe'


alias  trail='<<<${(F)path}'
alias  rm=trash

# Git
alias gaa="git add -A"
alias gc="git c"
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gd="git diff --color"
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push -u origin"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gp="git branch"
alias gl="git log --graph --abbrev-commit --decorate --all"
grn() { git rebase -i HEAD~"$1";}

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
# shellcheck disable=SC2139
alias uuid="sh $HOME/.uuid_code"

#Directories

# shellcheck disable=SC2139
alias cdd="cd $HOME/Documents"
alias cdw="cdd;cd workspace"
alias lg="cdd;cd lg"
alias lgt="lg;cd training"
alias lgl="lg;cd labs"
alias lg5="lg;cd pentagon"
alias pentagon="lg5"

#Docker
alias rmV='docker volume prune -f'
alias dall='dstop && drm && rmV'
alias dstop='docker stop $(docker ps -a -q)'
alias drm='docker rm $(docker ps -a -q)'
