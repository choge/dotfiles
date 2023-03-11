Setup scripts
=============

Installation of packages
------------------------

Do something like:

```
# grep -v -E '(^$|^#.*)' packages.txt | pacman -S --needed -
```
