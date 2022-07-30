dotfiles
========

My dotfiles repo.

Contents
--------

1. kitty
2. Neovim
3. bat
4. ptpython
5. wezterm

Kitty
-----

### Fonts

* Use [Input Mono](https://input.djr.com)
  * `kitty list-fonts` shows different font names, but the correct one seems 'Input Mono' (shown on Mac), not 'InputMono' (shown on Ubuntu)

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
