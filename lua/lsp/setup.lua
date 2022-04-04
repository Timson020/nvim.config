local lsp_installer = require("nvim-lsp-installer")

-- 安装列表
-- { key: 语言 value: 配置文件 }
-- key 必须为下列网址列出的名称
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
	-- lsp/config/lua.lua
	sumneko_lua = require("lsp.config.lua"),
	dockerls = require("lsp.config.docker"),
	clangd = require("lsp.config.c"),
	golangci_lint_ls = require("lsp.config.go"),
	pyright = require("lsp.config.python"),
	solang = require("lsp.config.solidity"),
	eslint = require("lsp.config.eslint"),
	html = require("lsp.config.html"),
	quick_lint_js = require("lsp.config.javascript"),
}

-- 自动安装 Language Servers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

-- 驱动
lsp_installer.on_server_ready(function(server)
    local config = servers[server.name]
    if config == nil then
        return
    end
    if config.on_setup then
        config.on_setup(server)
    else
        server:setup({})
    end
end)
