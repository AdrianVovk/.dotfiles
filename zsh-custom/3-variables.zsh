export MANPATH="/usr/local/man:$MANPATH"
#export LANG=en_US.UTF-8 # Specify Language
export EDITOR='micro'
# export ARCHFLAGS="-arch x86_64" # Compilation flags
export BIN=$HOME/.dotfiles/bin # Bin Folder Location
export PATH=$BIN:$PATH # Enable extra locations in PATH

# zsh-autosuggest settings
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=14"
#export ZSH_AUTOSUGGEST_USE_ASYNC="y"
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="50"
export ZSH_AUTOSUGGEST_STRATEGY="match_prev_cmd"