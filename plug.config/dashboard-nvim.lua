-- local home = os.getenv('HOME')
local db = require('dashboard')

-- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
-- db.preview_command = 'cat | lolcat -F 0.3'
-- db.preview_file_width = 80
-- db.preview_file_height = 12

db.custom_center = {
	{ icon = ' ', desc = 'Open New File   ', action = 'tabnew' },
	{ icon = ' ', desc = 'Find Work       ', action = 'Telescope live_grep' },
	{ icon = ' ', desc = 'Find File       ', action = 'Telescope find_files' },
	{ icon = ' ', desc = 'Edit keybindings', action = 'edit ~/.config/nvim/common/keybindings.vim' },
}

-- " http://patorjk.com/software/taag/#p=display&h=2&v=2&f=Merlin1&t=
db.custom_header = {
	'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀⠀⠀⠀ ',
	'⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀ ',
	'⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀ ',
	'⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄ ',
	'⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇ ',
	'⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷ ',
	'⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃ ',
	'⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀ ',
	'⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀ ',
	'⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁    ',
}

db.custom_footer = {
	'+--------------------------------------------------------------------+',
	'|   ____                                    ____        _ _          |',
	'|  |  _ \\ _ __ __ _ _ __ __ _  ___  _ __   | __ )  __ _| | |         |',
	'|  | | | | .__/ _. | .__/ _` |/ _ \\| ._ \\  |  _ \\ / _` | | |         |',
	'|  | |_| | | | (_| | | | (_| | (_) | | | | | |_) | (_| | | |         |',
	'|  |____/|_|  \\__,_|_|  \\__, |\\___/|_| |_| |____/ \\__,_|_|_|         |',
	'|      _         _   _  |___/    _____ _                             |',
	'|     / \\  _   _| |_| |__    _  |_   _(_)_ __ ___  ___  ___  _ __    |',
	'|    / _ \\| | | | __| ._ \\  (_)   | | | | ._ ` _ \\/ __|/ _ \\| ._ \\   |',
	'|   / ___ \\ |_| | |_| | | |  _    | | | | | | | | \\__ \\ (_) | | | |  |',
	'|  /_/   \\_\\__,_|\\__|_| |_| (_)   |_| |_|_| |_| |_|___/\\___/|_| |_|  |',
	'|                                                                    |',
	'+--------------------------------------------------------------------+',
}

-- let g:dashboard_custom_header = s:custom_header
-- let g:dashboard_custom_footer = s:custom_footer
-- let g:dashboard_default_executive ='clap'

