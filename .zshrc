export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh" # This loads nvm
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && . "$(brew --prefix nvm)/etc/bash_completion.d/nvm" # This loads nvm bash_completion



# Load Angular CLI autocompletion.
source <(ng completion script)

# kitty ssh fix
if [[ "$TERM" == "xterm-kitty" ]]; then
  alias ssh='TERM=xterm-256color ssh'
fi
