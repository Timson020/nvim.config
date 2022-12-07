-- local map = skcode.map
local M = {}
local map = vim.keymap.set

M.treesitter = function(mapBuf)
	local opt = { noremap = true, silent = true }
	-- rename
  mapBuf('n', '<LocalLeader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
	mapBuf('n', '<LocalLeader>ca', '<cmd>Lspsaga code_action<CR>', opt)
  -- go xx
	-- 查看doc
	mapBuf('n', 'gh', '<cmd>Lspsaga hover_doc<CR>', opt)
	-- 查看申明
	mapBuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
	-- 查看引用
	mapBuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
	mapBuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
	mapBuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  -- diagnostic
	mapBuf('n', '<LocalLeader>go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
	mapBuf('n', '<LocalLeader>ap', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
	mapBuf('n', '<LocalLeader>an', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
	mapBuf('n', '<LocalLeader>al', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  -- mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

M.floaterm = function ()
	vim.g.floaterm_keymap_toggle = '<c-\\>'
  map('n', '<LocalLeader>tn', ':FloatermToggle --autoclose=2<CR>')
  map('n', '<LocalLeader>tg', ':FloatermNew --height=0.99 --width=0.99 --autoclose=2 lazygit<CR>')
  -- map('n', '<LocalLeader>tr', ':FloatermNew --height=0.99 --width=0.99 --autoclose=2 ranger<CR>')
end

M.lsp = function(mapbuf)
	local opt = { noremap = true, silent = true }
	-- rename
  mapbuf('n', '<LocalLeader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
	mapbuf('n', '<LocalLeader>ca', '<cmd>Lspsaga code_action<CR>', opt)
  -- go xx
	-- 查看doc
	mapbuf('n', 'gh', '<cmd>Lspsaga hover_doc<CR>', opt)
	-- 查看申明
	mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
	-- 查看引用
	mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
	mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
	mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  -- diagnostic
	mapbuf('n', '<LocalLeader>go', '<cmd>Lspsaga show_line_diagnostics<CR>', opt)
	mapbuf('n', '<LocalLeader>ap', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opt)
	mapbuf('n', '<LocalLeader>an', '<cmd>Lspsaga diagnostic_jump_next<CR>', opt)
	mapbuf('n', '<LocalLeader>al', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  -- mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end


return M
