local pluginKeys = {}

local opt = { noremap = true, silent = true }

-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
  -- rename
  mapbuf('n', '<LocalLeader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
	mapbuf('n', '<LocalLeader>ca', '<cmd>Lspsaga code_action<CR>', opt)
  -- go xx
	mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
	mapbuf('n', 'gh', '<cmd>Lspsaga hover_doc<CR>', opt)
  -- mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  -- mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  -- mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
  -- diagnostic
	mapbuf('n', '<LocalLeader>go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
	mapbuf('n', '<LocalLeader>ap', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
	mapbuf('n', '<LocalLeader>an', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
	mapbuf('n', '<LocalLeader>al', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  -- mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

return pluginKeys