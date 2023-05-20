# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."

alias ~="cd ~"
alias cls="clear"
alias dotfiles='cd $DOTFILES_PATH'

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
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'

#Directories

# shellcheck disable=SC2139
alias cdd="cd $HOME/Documents"
alias cdw="cdd;cd workspace"
alias cdt="cdw;cd training"
alias cds="cdw;cd spikes"
alias ctx="cdd;cd contexts"
alias org="cdw;cd orange"
alias cau="cdw;cd autentia"
alias cdp="cdd;cd personal"
alias inas="cdp;cd inascol"
alias onyx="inas"
alias onyx-api="onyx;cd onyxback"
alias onyx-web="onyx;cd onyxfront"

#Docker
alias rmV='docker volume prune -f'
alias dall='dstop && drm && rmV'
alias dstop='docker stop $(docker ps -a -q)'
alias drm='docker rm $(docker ps -a -q)'
