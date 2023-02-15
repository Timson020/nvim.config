local mason_status, mason = pcall(require, "mason")
if not mason_status then
	vim.notify("mason 未安装")
	return
end

local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

local list = require("lsp.list")
local default_config = require("lsp.default_config")

local alones = {}
local servers = {}
local installServers = {}
local servers_handlers = {}

for _, ele in pairs(list) do
	table.insert(installServers, ele.name)
	if ele.alone then
		table.insert(alones, ele.name)
	else
		table.insert(servers, ele.name)
	end
end

for _, value in pairs(servers) do
	local status, config = pcall(require, "lsp.config." .. value)
	if not status then
		config = {}
	end
	servers_handlers[value] = function()
		lspconfig[value].setup(vim.tbl_deep_extend("force", default_config, config))
	end
end

mason.setup({
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
})

mason_lspconfig.setup({
	ensure_installed = installServers,
})

mason_lspconfig.setup_handlers(servers_handlers)

for _, ele in pairs(alones) do
	require("lsp.config." .. ele)
end

require('lsp.ui')
require('lsp.null_ls')
