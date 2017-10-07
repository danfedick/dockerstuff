# Source Files in ~/.zfiles

#cd ~/.zfiles
#source <(cat *)
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
blue='\e[38;5;33m'
brightOrange='\e[38;5;208m'
export PS1="${blue}\t \d ${blue}[\u@\h.${brightOrange}${Blue}:\033[36m\w\033[31m${blue}]\033[0m\n 🦍 ↪ " 


alias ta='tmux attach'


# Set Default editor to vi
set -o vi
export EDITOR=vi

if [[ -f ~/.vault-token-${HOST_ENV} ]]
then
  export VAULT_TOKEN=$(cat ~/.vault-token-${HOST_ENV})
fi


alias ll='ls -alrth'
