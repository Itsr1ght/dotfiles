local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.enable_tab_bar = false
config.front_end = 'WebGpu'
config.animation_fps = 60
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.font = wezterm.font 'Iosevka'

return config
