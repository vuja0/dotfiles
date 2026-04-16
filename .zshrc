export NVM_DIR="$HOME/.nvm"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export PATH="$HOME/.config/emacs/bin:$PATH"
#the functions that loads the nvm but only after typing the fake nvm,node,npm command
load_nvm() {
    [ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"
    [ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && . "$(brew --prefix nvm)/etc/bash_completion.d/nvm"
}

#Placeholder functions
nvm() { unset -f nvm node npm; load_nvm; nvm "$@" }
node() { unset -f nvm node npm; load_nvm; node "$@" }
npm() { unset -f nvm node npm; load_nvm; npm "$@" }

[[ -f ~/.ng_completion ]] && source ~/.ng_completion


# Fix SSH issues in Kitty by ensuring the remote server understands the terminal type
if [[ "$TERM" == "xterm-kitty" ]]; then
  alias ssh='TERM=xterm-256color ssh'
fi

# Initialize the Starship prompt
eval "$(starship init zsh)"

