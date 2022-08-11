#!/usr/bin/env bash

CONFIG_DIR=${XDG_CONFIG_DIR:-$HOME/.config}

## Creating symlinks for directories

for dirname in $(find config/* -maxdepth 0 -type d -exec basename {} \;)
do
    # check if the folder (but not symlink) exists
    if [ -d $CONFIG_DIR/$dirname -a ! -L $CONFIG_DIR/$dirname ]; then
        echo "$dirname already exists, so back it up"
        mv $CONFIG_DIR/$dirname $CONFIG_DIR/$dirname-backup-$(date -u +%Y-%m-%d)
    fi

    ln -fs $(pwd)/config/$dirname $CONFIG_DIR/$dirname
    echo "Created a symlink $CONFIG_DIR/$dirname -> $PWD/config/$dirname"
done

## standalone config files under ~/.config dir

for filename in $(find config/* -maxdepth 0 -type f -exec basename {} \;)
do
    ln -fs $(pwd)/config/$filename $CONFIG_DIR/$filename
    echo "Created a symlink $CONFIG_DIR/$filename -> $PWD/config/$filename"
done

## Individual configurations

### Vim-Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

### bash_aliases (assuming there is a default bashrc from Ubuntu, which refers to this file)
if [ ! -f $HOME/.bash_aliases ]; then
    ln -s $(pwd)/bash_aliases $HOME/.bash_aliases
fi

### zshrc
if [ ! -f $HOME/.bashrc ]; then
    ln -s $(pwd)/bashrc $HOME/.bashrc
fi

### zshrc
if [ ! -f $HOME/.zshrc ]; then
    ln -s $(pwd)/zshrc $HOME/.zshrc
fi

