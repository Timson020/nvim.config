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
	}
}

return opts
