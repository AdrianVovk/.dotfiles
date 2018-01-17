eval "$(hub alias -s)" # Github Git Wrapper

# Kotlin-Native Installation
#export PATH=$HOME/Development/Kotlin/Native/kotlin-native-bin/dist/bin:$PATH

# Tilix VTE Support
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
   source /etc/profile.d/vte.sh
fi

# ssh
# TODO: Configure SSH from here
# export SSH_KEY_PATH="~/.ssh/rsa_id"
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# Update the prompt
TMOUT=1
TRAPALRM() {
    zle reset-prompt
}