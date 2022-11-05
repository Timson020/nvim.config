local opts = {
	settings = {
		codeAction = {
    	disableRuleComment = {
      	enable = true,
      	location = "separateLine"
    	},
    	showDocumentation = {
      	enable = true
    	}
		},
		packageManager = "npm",
		workingDirectory = {
			mode = "location"
  	}
	},
	handlers = {
		-- 关闭与eslint重复的报错
		['textDocument/publishDiagnostics'] = function()
		end,
	},
}

return opts