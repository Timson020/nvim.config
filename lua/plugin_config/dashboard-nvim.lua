local bg = [[
_|_
 |
	_|_ 
	 |  
]]

local logo = [[
	+⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀⠀⠀⠀ +
	+⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀ +
  +⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀ +
  +⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄ +
	+⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇ +
	+⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷ + 
	+⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃ + 
	+⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀ +
	+⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀ +
	+⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁    +
]]

local footer = [[



+-------------------------------------------------------------------------+
|   ____                                       ____         _ _           |
|  |  _ \\ _ __ __ _ _ __ __ _  ___  _ __     | __ )  __ _ | | |          |
|  | | | | .__/ _. | .__/ _` |/ _ \\| ._ \\   |  _ \\ / _` | | |          |
|  | |_| | | | (_| | | | (_| | (_) | | | | |  |_) | (_|    | | |          |
|  |____/|_|  \\__,_|_| \\__, |\\___/|_| |_|  |____/ \\__,_|_|_|          |
|      _         _   _  |___/       _____ _                               |
|     / \\  _   _| |_| |__    _    |_   _(_)_ __ ___  ___  ___  _ __      |
|    / _ \\| | | | __| ._ \\  (_)    | | | | ._ ` _ \\/ __|/ _ \\| ._ \\  |
|   / ___ \\ |_| | |_| | | |  _    | | | | | | | | \\__ \\ (_) | | | |    |
|  /_/   \\_\\__,_|\\__|_| |_| (_)   |_| |_|_| |_| |_|___/\\___/|_| |_|   |
|                                                                         |
+-------------------------------------------------------------------------+
]]

local config = {
	theme = 'hyper',
	config = {
		background = { lines = vim.split(bg, "\n"), tile = true, center = true },
		header = vim.split(logo, '\n'),
		footer = vim.split(footer, '\n'),
		shortcut = {
			{ icon = ' ', key = 'n', desc = 'Open New File   ', action = 'tabnew' },
			{ icon = ' ', key = 'w', desc = 'Find Work       ', action = 'Telescope live_grep' },
			{ icon = ' ', key = 'f', desc = 'Find File       ', action = 'Telescope find_files' },
			{ icon = ' ', key = 'e', desc = 'Edit keybindings', action = 'edit ~/.config/nvim/common/keybindings.vim' },
		}
	}
}

local M = {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function ()
		require('dashboard').setup(config)
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'} }
}

return M
