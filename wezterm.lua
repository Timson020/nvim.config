local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.font = wezterm.font({ family ='JetBrainsMono Nerd Font', weight = 'Medium' })
-- config.font = wezterm.font({ family ='Hack Nerd Font', weight = 'Medium' })
config.font_size = 10

config.max_fps = 120
config.animation_fps = 60

config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true

config.enable_tab_bar = false
config.window_decorations = 'RESIZE'

config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

config.window_close_confirmation = 'NeverPrompt'

config.window_padding = { top = 10, left = 10, bottom = 10, right = 10 }
config.adjust_window_size_when_changing_font_size = false

config.color_scheme = 'Ef-Deuteranopia-Dark'

config.initial_cols = 240
config.initial_rows = 60

config.leader = { key = "q", mods = "CTRL", timeout_milliseconds = 2000 }

config.keys = {
	{
		mods = "LEADER",
		key = "f",
		action = wezterm.action.ToggleFullScreen
	},
}

return config
