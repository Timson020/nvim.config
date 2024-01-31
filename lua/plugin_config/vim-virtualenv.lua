-- let g:virtualenv_stl_format = '[%n]'

local M = {
	'jmcantrell/vim-virtualenv',
	config = function ()
		vim.g.virtualenv_stl_format = '[%n]'
	end
}

return M

