-- let g:virtualenv_stl_format = '[%n]'

local M = {
	'jglasovic/venv-lsp.nvim',
	config = function ()
		local venv = require('venv-lsp')
		venv.init()
	end
}

return M

