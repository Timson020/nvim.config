local masonConfig = {
	ui = {
		width = 0.8,
		height = 0.9,
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
		keymaps = {
			-- Keymap to expand a package
			toggle_package_expand = "<CR>",
			-- Keymap to install the package under the current cursor position
			install_package = "i",
			-- Keymap to reinstall/update the package under the current cursor position
			update_package = "u",
			-- Keymap to check for new version for the package under the current cursor position
			check_package_version = "c",
			-- Keymap to update all installed packages
			update_all_packages = "U",
			-- Keymap to check which installed packages are outdated
			check_outdated_packages = "C",
			-- Keymap to uninstall a package
			uninstall_package = "X",
			-- Keymap to cancel a package installation
			cancel_installation = "<C-c>",
			-- Keymap to apply language filter
			apply_language_filter = "<C-f>",
		}
	}
}

-- 定义 lint 的快捷键
local function attach(client, buf)
	-- Disable the formatting function and leave it to a special plug-in plug-in for processing
	-- 禁用格式化功能，交给专门插件插件处理
	client.server_capabilities.documentFormattingProvider = false
	client.server_capabilities.documentRangeFormattingProvider = false
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(buf, ...)
	end

	-- Bind shortcut keys
	-- 绑定快捷键
	require("keybindings").lsp(buf_set_keymap)
end

local M = {
	'williamboman/mason.nvim',

	config = function ()
		local mason = require('mason')
		local lspconfig = require("lspconfig")
		local mason_lsp = require('mason-lspconfig')

		-- setup mason main pakcage
		mason.setup(masonConfig)

		-- setup mason lsp
		mason_lsp.setup({
			ensure_installed = { 'ast_grep', 'eslint', 'ts_ls', 'tailwindcss', 'prismals' },
		})

		-- TODO
		-- 暂时不起作用
		lspconfig.ast_grep.setup{
			cmd = { 'ast-grep', 'lsp' },
			filetypes = { 'c', 'cpp', 'rust', 'go', 'java', 'python', 'javascript', 'typescript', 'html', 'css', 'kotlin', 'dart', 'lua' },
			root_dir = lspconfig.util.root_pattern('sgconfig.yml', 'sgconfig.yaml'),
			settings = {
				astGrep = {
					parser = {
						tsx = { 'typescript', 'typescriptreact' },
					},
				},
			}
		}

		lspconfig.dartls.setup{
			default_config = {
				cmd = { 'dart', 'language-server', '--protocol=lsp' },
				filetypes = { 'dart' },
				root_dir = lspconfig.util.root_pattern 'pubspec.yaml',
				init_options = {
					onlyAnalyzeProjectsWithOpenFiles = true,
					suggestFromUnimportedLibraries = true,
					closingLabels = true,
					outline = true,
					flutterOutline = true,
				},
				settings = {
					dart = {
						completeFunctionCalls = true,
						showTodos = true,
					},
				},
			},
			docs = {
				description = [[
					https://github.com/dart-lang/sdk/tree/master/pkg/analysis_server/tool/lsp_spec

					Language server for dart.
				]],
				default_config = {
					root_dir = [[root_pattern("pubspec.yaml")]],
				},
			},
			on_attach = attach
		}

		lspconfig.ts_ls.setup{
			on_attach = attach
		}

		lspconfig.eslint.setup{
			on_attach = attach
		}

		lspconfig.tailwindcss.setup{
			on_attach = attach
		}

		lspconfig.prismals.setup{
			on_attach = attach
		}

		require('lsp.ui')
	end,

	dependencies = {
		'neovim/nvim-lspconfig',
		'williamboman/mason-lspconfig.nvim',
	}
}

return M
