export ZSH=$HOME/.oh-my-zsh

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


source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_USE_ASYNC="true"

SPACESHIP_DOCKER_SHOW=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_DIR_TRUNC_REPO=true

# User configuration
path=($HOME/bin /snap/bin /usr/local/go/bin $path)
#fpath=($HOME/projects/webflo/wam $fpath)

for file in $HOME/.dotfiles/{options,aliases,exports,functions}.{zsh,sh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

if [[ -d $HOME/.zsh ]]; then
	for file in $HOME/.zsh/*.{zsh,sh}; do
		[ -r "$file" ] && [ -f "$file" ] && source "$file"
	done
	unset file
fi
