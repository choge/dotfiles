## Auto completion
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U compinit
compinit

alias icat='kitty +kitten icat'

eval "$(starship init zsh)"
