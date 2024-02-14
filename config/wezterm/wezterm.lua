local wezterm = require 'wezterm'
local act = wezterm.action

function detect_os()
    local os = io.popen('uname -s'):read('*l')
    if os == 'Darwin' then
        return 'macos'
    elseif os == 'Linux' then
        return 'linux'
    else
        return 'windows'
    end
end

function detect_host()
    local host = io.popen('hostname'):read('*l')
    return host
end

function merge_tables(t1, t2)
    for k,v in pairs(t2) do
        if (type(v) == "table") and (type(t1[k] or false) == "table") then
            merge_tables(t1[k], t2[k])
        else
            t1[k] = v
        end
    end
    return t1
end

local osname = detect_os()
local hostname = detect_host()

-- ------------------------------------------------------------
-- Base configuration
-- ------------------------------------------------------------
local base_config = {
    window_background_opacity = 0.9,
    color_scheme ='GitHub Dark',

    font = wezterm.font({
        family='Monaspace Neon',
        -- family='Monaspace Argon',
        -- family='Monaspace Xenon',
        -- family='Monaspace Radon',
        -- family='Monaspace Krypton',
        weight = "Book",
        style  = "Normal",
        harfbuzz_features = {'calt', 'liga', 'dlig', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08'},
    }),
    font_size = 14.0,

    keys = {
        { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
        { key = 'C', mods = 'CTRL', action = act.CopyTo 'Clipboard' },
    }
}


-- ------------------------------------------------------------
-- Configurations specific to OS and host
-- ------------------------------------------------------------
local os_specific = {}

local host_specific = {
    ['ser6'] = {
        font_size = 12.0
    }
}

local config = merge_tables(base_config, os_specific[osname] or {})
config = merge_tables(config, host_specific[hostname] or {})
return config

