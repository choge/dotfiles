## Auto completion
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U compinit
compinit

alias icat='kitty +kitten icat'
alias ls=lsd

export PATH=$HOME/.local/bin:$HOME/go/bin:$PATH

eval "$(starship init zsh)"
eval "$(mise activate zsh)"

