local null_ls = require("null-ls")
-- local mason_null_ls = require('mason-null-ls')

local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	sources = {
		diagnostics.eslint.with({
      prefer_local = "node_modules/.bin",
    }),

		code_actions.gitsigns,
    code_actions.eslint.with({
      prefer_local = "node_modules/.bin",
    }),

		diagnostics_format = "[#{s}] #{m}",
	}
})
