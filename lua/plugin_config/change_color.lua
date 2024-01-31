local M = {
	'chxuan/change-colorscheme',
	config = function ()
		-- 主题文件存储在~/.vim/color/ 目录下
		-- 插件就可以自动读取，然后使用快捷键切换主题
		-- 主题文件可以查看 https://github.com/flazz/vim-colorschemes.git
		local key = require('keybindings')
		key.color()
	end
}

return M
