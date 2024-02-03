local wezterm = require 'wezterm'

return {
    window_background_opacity = 0.9,
    color_scheme ='Atelierdune (dark) (terminal.sexy)',

    font = wezterm.font {
        family = 'Monaspace Argon Var',
        harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
    },
    font_size = 14.0
}
