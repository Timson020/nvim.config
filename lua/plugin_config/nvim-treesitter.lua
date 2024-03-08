-- local status, treesitter = pcall(require, "nvim-treesitter.configs")
--
-- if not status then
-- 		vim.notify("没有找到 nvim-treesitter")
-- 		return
-- end

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

local config = {
	-- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = {
		"html",
		"css",
		"scss",
		"sql",
		"solidity",
		"dart",
		"gitignore",
		"json",
		"vim",
		"vue",
		"tsx",
		"javascript",
		"typescript",
		"c",
		"lua",
		"go",
		"python",
		"prisma",
		"dockerfile"
	},

  -- 启用代码高亮模块
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
		incremental_selection = {
			indent = {
				enable = true,
			}
		},
		context_commentstring = {
			enable = true,
			enable_autocmd = false
		}
  },

	-- 缩紧
	indent = {
		enable = true
	}
}

local M = {
	'nvim-treesitter/nvim-treesitter',
	config = function()
		local treesitter = require('nvim-treesitter.configs')
		treesitter.setup(config)
	end
}

return M
