#!/usr/bin/env bash

CONFIG_DIR=${XDG_CONFIG_DIR:-$HOME/.config}

## Creating symlinks

for dirname in $(find ./config/* -type d -depth 0 -exec basename {} \;)
do
    # check if the folder exists
    if [ -d $CONFIG_DIR/$dirname ]; then
        echo "$dirname already exists, so back it up"
        mv $CONFIG_DIR/$dirname $CONFIG_DIR/$dirname-backup-$(date -u +%Y-%m-%d)
    fi

    ln -s $(pwd)/$dirname $CONFIG_DIR/$dirname
    echo "Created a symlink $CONFIG_DIR/$dirname -> $PWD/$dirname"
done

## Individual configurations

### Vim-Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

### bash_aliases (assuming there is a default bashrc from Ubuntu, which refers to this file)
if [ ! -f $HOME/.bash_aliases ]; then
    ln -s $(pwd)/.bash_aliases $HOME/.bash_aliases
fi
