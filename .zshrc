export ZSH=/home/florent/.oh-my-zsh

ZSH_THEME="spaceship"

ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	direnv
	fzf
	h
	k
	dnote
	git
	docker
	docker-compose
	npm
	pip
	yarn
	pass
	nvm
)

# fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_USE_ASYNC="true"

SPACESHIP_DOCKER_SHOW=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_DIR_TRUNC_REPO=true

# User configuration
path=($HOME/bin /snap/bin $path)


for file in ~/.dotfiles/{options,aliases,exports,functions}.{zsh,sh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

for file in ~/.zsh/*.{zsh,sh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

