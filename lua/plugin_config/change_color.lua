local M = {
	'chxuan/change-colorscheme',
	config = function ()
		-- 主题文件可以查看 https://github.com/flazz/vim-colorschemes.git
		local key = require('keybindings')
		key.color()

		local status = pcall(vim.cmd, 'colorscheme ' .. 'solarized8_dark')
		if not status then
			vim.cmd("colorscheme habamax")
		end
	end
}

return M
