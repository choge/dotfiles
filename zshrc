## Auto completion
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U compinit
compinit

eval "$(starship init zsh)"
