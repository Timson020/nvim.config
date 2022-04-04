local opts = {
	settings = {

	},
	flags = {

	},
	on_attach = function(client, bufnr)
			-- 禁用格式化功能，交给专门插件插件处理
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
	end,
}

return {
	on_step = function(server)
		server:setup(opts)
	end
}
