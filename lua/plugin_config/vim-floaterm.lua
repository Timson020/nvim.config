local M = {
	'voldikss/vim-floaterm',
	config = function ()
		local keybindings = require('keybindings')
		keybindings.floaterm()
	end
}

return M

