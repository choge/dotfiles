Setup scripts
=============

Installation of packages
------------------------

Do something like:

```
# grep -v -E '(^$|^#.*)' packages.txt | pacman -S --needed -
```

AUR packages
------------

1. First, install [AUR helper](https://wiki.archlinux.jp/index.php/AUR_%E3%83%98%E3%83%AB%E3%83%91%E3%83%BC)
2. Do the same thing as normal packages

```
$ grep -v -E '(^$|^#.*)' aur-packages.txt | paru -S --needed -
```

Some packages manually installed
--------------------------------

- `plasma-meta`
- ...

