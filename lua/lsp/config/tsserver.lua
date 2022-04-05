local opts = {
  flags = {
    debounce_text_changes = 150,
  },
  on_attach = function(client, bufnr)
    -- 禁用格式化功能，交给专门插件插件处理
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    -- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    -- 绑定快捷键
		require('lsp.keybindings').mapLSP(buf_set_keymap)
  end,
	handlers = {
		-- 关闭与eslint重复的报错
		['textDocument/publishDiagnostics'] = function()

		end,
	},
}

return {
	on_setup = function(server)
		server:setup(opts)
	end
}
