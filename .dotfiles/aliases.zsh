#!/usr/bin/env bash

alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"

alias l='ls -lFh'   #size,show type,human readable
alias la='ls -lAFh' #long list,show almost all,show type,human readable
alias lr='ls -tRFh' #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh' #long list,sorted by date,show type,human readable
alias ll='ls -l'    #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

#alias ls='LC_COLLATE=C ls --tabsize=0 --literal --show-control-chars --color=always --human-readable'
#alias ls='ls --tabsize=0 --literal --show-control-chars --color=always --human-readable'
alias ls='ls -l -h -v --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F --tabsize=0 --literal --show-control-chars --color=always --human-readable'
alias la='ls -a'

#alias grep='grep --color=auto -d skip'
alias grep="grep --color=auto"
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias less="less -R"

alias t='tail -f'

alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

alias auto-update="sudo apt -y update && sudo apt -y full-upgrade && sudo apt -y autoremove"
alias ip-local="ip a | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ssh-eval-ntp='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/NTP.pem'
alias docker-remove-all='docker rm $(docker ps -a -q); docker rmi $(docker images -q)'
alias lazydocker='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v /home/florent/docker/lazydocker//config:/.config/jesseduffield/lazydocker lazyteam/lazydocker'
alias dive='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive:latest'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias git-remove-branches="git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
