local opts = {
	capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
	settings = {
		css = {
			validate = true,
		},
		less = {
			validate = true,
		},
		scss = {
			validate = true,
		},
	}
}

return opts
