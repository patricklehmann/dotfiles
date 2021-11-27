# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export TERM="xterm-256color"
export PATH="$PATH:$HOME/.rvm/bin"

source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias reload="source ~/.zshrc"

alias -g ll="ls -lathr"

alias gs="git status"

alias gcm() { 
  git commit -m $1
}

alias gph="git push origin HEAD"

source /home/plehmann/development/dotfiles/system/.aliases
