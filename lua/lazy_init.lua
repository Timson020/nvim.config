local lazy = require('lazy')

-- INFO
-- 常用显示

-- 图标插件
local icon = require('plugin_config.nvim-web-devicons')
-- 开始界面
local dashboard = require('plugin_config.dashboard-nvim')
-- buffer栏
local bufferline = require('plugin_config.bufferline_nvim')
-- 底部栏
local lualine = require('plugin_config.lualine_nvim')
-- 目录树
local tree = require('plugin_config.nvim-tree')
-- 查找
local telescope = require('plugin_config.telescope_nvim')
-- git
local gitsigns = require('plugin_config.gitsigns')
--
local colorscheme = require('plugin_config.change_color')

-- INFO
-- 注释相关

-- 注释插件
local Comment = require('plugin_config.Comment_nvim')
local todo = require('plugin_config.todo-comments_nvim')

-- INFO
-- 缩进显示
-- 多选

-- 
local ufo = require('plugin_config.nvim-ufo')
-- 缩进
local ibl = require('plugin_config.indent-blankline_nvim')
-- 
local cursorword = require('plugin_config.cursorword')
--
local multi = require('plugin_config.vim-visual-multi')

-- INFO
-- 弹窗

--
local floaterm = require('plugin_config.vim-floaterm')
-- 
local toggleterm = require('plugin_config.toggleterm_nvim')

-- INFO
-- 侧边栏

--
local symbol = require('plugin_config.symbols-outline_nvim')

-- INFO

-- python 虚拟环境
-- local virtualenv = require('plugin_config.venv-lsp')

-- INFO
-- 语法相关

-- 语法高亮
local treesitter = require('plugin_config.nvim-treesitter')
-- -- LSP
local mason = require('plugin_config.mason_nvim')
-- -- 
local cmp = require('plugin_config.nvim-cmp')
-- 
local colorizer = require('plugin_config.nvim-colorizer')


lazy.setup({
	icon,
	dashboard,
	bufferline,
	lualine,
	tree,
	telescope,
	gitsigns,
	colorscheme,

	Comment,
	todo,

	ufo,
	ibl,
	cursorword,
	multi,

	floaterm,
	toggleterm,

	symbol,

	treesitter,
	mason,
	cmp,
	colorizer
})
