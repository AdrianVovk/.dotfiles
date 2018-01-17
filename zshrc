export ZSH=$HOME/.dotfiles/tools/oh-my-zsh # oh-my-zsh installation
export ZSH_CUSTOM=$HOME/.dotfiles/zsh-custom/ # Custom Scripts Location

ZSH_THEME="powerlevel9k/powerlevel9k"
HYPHEN_INSENSITIVE="true" # _ and - will be interchangeable in completion
export UPDATE_ZSH_DAYS=5 # How often to auto-update (in days)
ENABLE_CORRECTION="true" # Enable command auto-correction

plugins=(
	adb
	autojump
	brew
	command-not-found
	common-aliases
	compleat
	dircycle
	#docker
	encode64
	#fbterm
	git
	git-extras
	github
	gradle
	history
	lol
	node
	npm
	nvm
	nyan
	#pass
	#screen
	sudo
	systemd
	ubuntu
	urltools
	web-search
	wd
   zsh_reload

	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh # Start oh-my-zsh