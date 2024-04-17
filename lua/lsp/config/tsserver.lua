local opts = {
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
				languages = {"javascript", "typescript", "vue"},
			},
		},
	},
	settings = {
		packageManager = "npm",
		codeAction = {
			disableRuleComment = {
				enable = true,
				location = "separateLine"
			},
			showDocumentation = {
				enable = true
			}
		},
		workingDirectory = {
			mode = "location"
		}
	},
	filetypes = {
    "javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"vue"
  },
	handlers = {
		-- 关闭与eslint重复的报错
		-- ['textDocument/publishDiagnostics'] = function()
		-- end,
	},
}

return opts
