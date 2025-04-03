local lazy = require('lazy')

-- INFO
-- 常用显示

-- 图标插件
local icon = require('plugin_config.nvim-web-devicons')
-- git
local gitsigns = require('plugin_config.gitsigns')
-- 开始界面
local dashboard = require('plugin_config.dashboard-nvim')
-- buffer栏
local bufferline = require('plugin_config.bufferline_nvim')
-- TODO vim.lsp.get_active_clients() is deprecated
-- 底部栏
local lualine = require('plugin_config.lualine_nvim')
-- 目录树
local tree = require('plugin_config.nvim-tree')
-- 查找
local telescope = require('plugin_config.telescope_nvim')
-- 切换主题
local colorscheme = require('plugin_config.change_color')

-- INFO
-- 注释相关

-- 注释插件
local Comment = require('plugin_config.Comment_nvim')
local todo = require('plugin_config.todo-comments_nvim')

-- INFO
-- 缩进显示
-- 多选

-- function 折叠
local ufo = require('plugin_config.nvim-ufo')
-- 缩进
local ibl = require('plugin_config.indent-blankline_nvim')
-- 聚焦当前所选单词
local cursorword = require('plugin_config.cursorword')
-- 多行选择, 多单词选择
local multi = require('plugin_config.vim-visual-multi')

-- INFO
-- 弹窗

--
local floaterm = require('plugin_config.vim-floaterm')
-- 
local toggleterm = require('plugin_config.toggleterm_nvim')

-- INFO
-- 侧边栏

-- TODO
-- 没测试
-- local symbol = require('plugin_config.symbols-outline_nvim')

-- INFO
-- 语法相关

-- markdown
local markdown = require('plugin_config.markdown_nvim')
-- 语法高亮
local treesitter = require('plugin_config.nvim-treesitter')
-- LSP
local mason = require('plugin_config.mason_nvim')
-- 常用的LSP [增强mason lsp]
local cmp = require('plugin_config.nvim-cmp')
-- 显示颜色
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

	-- symbol,

	markdown,
	treesitter,
	mason,
	cmp,
	colorizer
})
