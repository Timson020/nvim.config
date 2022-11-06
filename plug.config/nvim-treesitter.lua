local status, treesitter = pcall(require, "nvim-treesitter.configs")

if not status then
		vim.notify("没有找到 nvim-treesitter")
		return
end

treesitter.setup({
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
})

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
