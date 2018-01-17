unalias rm # Fix oh-my-zsh rm manipulation
function mkd() { mkdir -p "$@" && cd "$_"; } # Make a directory and cd into it
alias beep='echo "\a"' # Send terminal beep
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"' # Send a system notification

# Creates a simplified name for a repository for the prompt
function nameProject() {
	echo "{\"name\":\"$1\"}" > .prompt-meta.json
	echo "Renamed project to $1"
}