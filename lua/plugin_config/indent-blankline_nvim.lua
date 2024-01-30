-- local status, indent_blankline = pcall(require, "ibl")
-- if not status then
--   vim.notify("没有找到 indent_blankline")
--   return
-- end

local hooks = require "ibl.hooks"

local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local function hookFn()
	vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
	vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
	vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
	vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
	vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
	vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
	vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end

hooks.register(hooks.type.HIGHLIGHT_SETUP, hookFn)

local config = {
	indent = {
		highlight = highlight
	},
	scope = {
		enabled = true
		-- highlight = { }
	},
	exclude = {
		filetypes = {
			"dashboard",
			"packer",
			"terminal",
			"help",
			"log",
			"markdown",
			"TelescopePrompt",
			"lsp-installer",
			"lspinfo",
			"toggleterm",
		}
	}
}

local M = {
	'lukas-reineke/indent-blankline.nvim',
	config = function()
		local ibl = require('ibl')
		ibl.setup(config)
	end
}

return M

