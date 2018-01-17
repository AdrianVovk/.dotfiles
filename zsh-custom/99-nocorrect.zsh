# Handle nocorrect commands
for command in `cat $ZSH_CUSTOM/nocorrect.list`; do alias $command="nocorrect $command"; done
alias disableCorrect='echo $1 >> $ZSH_CUSTOM/nocorrect.list'