## Auto completion
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U compinit
compinit

alias icat='kitty +kitten icat'

eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /snap/terraform/400/terraform terraform
