dotfiles
========

My dotfiles repo.

Contents
--------

0. Softwares to use
1. kitty
2. Neovim
3. bat
4. ptpython
5. wezterm

Softwares to use
----------------

A list of some softwares that I prefer using:

* [sway](https://github.com/swaywm/sway) is a window manager (for Linux)
* [waybar](https://github.com/Alexays/Waybar) is a bar tool for wayland (and thus sway)
* [starship](https://starship.rs) for shell prompt
* [lsd](https://github.com/Peltoche/lsd) as an alternative of `ls`
* [bat](https://github.com/sharkdp/bat) as an alternative of `cat`
* [ripgrep](https://github.com/BurntSushi/ripgrep) as an alternative of `grep`
* [kitty](https://sw.kovidgoyal.net/kitty/) as a terminal emulator (so far the best!)
* [neovim](https://neovim.io) as a default editor
* [ptpython](https://github.com/prompt-toolkit/ptpython) as a better interactive python

Kitty
-----

### Fonts

* Use [Victor Mono](https://rubjo.github.io/victor-mono/)
  * Although [Input Mono](https://input.djr.com) is also really nice, it has removed the ligature at some point.

### Layout

Followed [the Splits Layout](https://sw.kovidgoyal.net/kitty/layouts/#the-splits-layout).

* Use the arrow keys to navigate the tabs
* Use Ctrl+Shift+Right to split a window to the right
* Use Ctrl+Shift+Down to split a window to the bottom
  * Currently no config to split a window to the left or to the top

### Scrolls

Added the following config since my mouse scrolls really slowly on Ubuntu.

```
touch_scroll_multiplier 10.0
```

Neovim
------

### Plugins

Use [vim-plug](https://github.com/junegunn/vim-plug) for management of plugins (mostly colorschemes)

ptpython
--------

Since some default setting is not for me, so put the custom config
