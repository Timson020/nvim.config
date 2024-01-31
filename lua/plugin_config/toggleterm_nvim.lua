-- local status, toggleterm = pcall(require, "toggleterm")
-- if not status then
--   vim.notify("没有找到 toggleterm")
--   return
-- end

local M = {
	'akinsho/toggleterm.nvim',
	config = function ()
		require('toggleterm').setup()
	end
}

return M

