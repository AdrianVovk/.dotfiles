# SDKMAN
export SDKMAN_DIR="$HOME/.dotfiles/tools/sdkman"
export loadSdkman="[[ -s \"$SDKMAN_DIR/bin/sdkman-init.sh\" ]] && source \"$SDKMAN_DIR/bin/sdkman-init.sh\""
eval $loadSdkman

# Brew
export PATH="/home/adrian/.linuxbrew/bin:$PATH"
export MANPATH="/home/adrian/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/adrian/.linuxbrew/share/info:$INFOPATH"

# NVM
export NVM_DIR="$HOME/.dotfiles/tools/nvm"
export loadNvm="[ -s \"$NVM_DIR/nvm.sh\" ] && . \"$NVM_DIR/nvm.sh\""
eval $loadNvm