local wezterm = require 'wezterm';

return {
    font = wezterm.font_with_fallback({ 'FiraCode Nerd Font Mono', 'Osaka' }),
    font_size = 11.0,
    use_ime = true,
    keys = {
        -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
        { key = "LeftArrow",  mods = "OPT", action = wezterm.action { SendString = "\x1bb" } },
        -- Make Option-Right equivalent to Alt-f; forward-word
        { key = "RightArrow", mods = "OPT", action = wezterm.action { SendString = "\x1bf" } },
    },
    window_background_opacity = 0.7,
}
