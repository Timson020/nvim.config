-- local map = skcode.map
local M = {}
local map = vim.keymap.set

vim.g.maplocalleader = ';'

-- 默认常规快捷键 
M.common = function ()
	-- 保存
	-- C-s == control + s
	-- nmap <silent> <C-s> :w<cr>
	map('n', '<C-s>', ':w<CR>')

	-- 缩进
	-- map('v', '<LocalLeader>]', ':1><CR>')
	-- map('v', '<LocalLeader>[', ':1<<CR>')

	-- 新开标签页
	-- nmap <silent> <C-t> :tabnew<cr>
	-- nmap <silent> <LocalLeader>q :tabnext<cr>
	-- nmap <silent> <LocalLeader>e :tabprevious<cr>
	map('n', '<C-t>', ':tabnew<CR>')
	map('n', '<LocalLeader>q', ':tabnext<CR>')
	map('n', '<LocalLeader>e', ':tabprevious<CR>')

	-- controller + jkhl 重新控制每给窗口的大小
	-- nmap <silent> <C-l> :vertical resize+2<cr>
	-- nmap <silent> <C-h> :vertical resize-2<cr>
	-- nmap <silent> <C-j> :resize+2<cr>
	-- nmap <silent> <C-k> :resize-2<cr>
	map('n', '<C-l>', ':vertical resize+2<CR>')
	map('n', '<C-h>', ':vertical resize-2<CR>')
	map('n', '<C-j>', ':resize+2<CR>')
	map('n', '<C-k>', ':resize-2<CR>')

	-- 快速浏览
-- nmap <silent> <C-u> 4k
-- nmap <silent> <C-d> 4j
	map('n', '<C-u>', '4k')
	map('n', '<C-d>', '4j')

	-- 	" ;p 打开搜索文件页面
	-- " 插件名 telescope.nvim
	-- nmap <silent> <LocalLeader>ff :Telescope find_files<cr>
	-- nmap <silent> <LocalLeader>fw :Telescope live_grep<cr>
	-- nmap <silent> <LocalLeader>git :Telescope git_files<cr>
	-- nmap <silent> <LocalLeader>buf :Telescope buffers<cr>
	-- nmap <silent> <C-q> :Bdelete!<cr>
	map('n', '<LocalLeader>ff', ':Telescope find_files<CR>')
	map('n', '<LocalLeader>fw', ':Telescope live_grep<CR>')
	map('n', '<LocalLeader>git', ':Telescope git_files<CR>')
	map('n', '<LocalLeader>buf', ':Telescope buffers<CR>')
	map('n', '<C-q>', ':Bdelete<CR>')

	-- 	" 打开tagbar
	-- " 插件名     simrat39/symbols-outline.nvim
	-- nmap <silent> <LocalLeader>r :SymbolsOutline<cr>
	map('n', '<LocalLeader>r', ':SymbolsOutline<CR>')

	-- 显示文件目录
	-- nmap <silent> <LocalLeader>te :NvimTreeToggle<cr>
	map('n', '<LocalLeader>te', ':NvimTreeToggle<CR>')
end

--
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

--
M.floaterm = function ()
	vim.g.floaterm_keymap_toggle = '<c-\\>'
	map('n', '<LocalLeader>tn', ':FloatermToggle --autoclose=2<CR>')
	map('n', '<LocalLeader>tg', ':FloatermNew --height=0.99 --width=0.99 --autoclose=2 lazygit<CR>')
	-- map('n', '<LocalLeader>tr', ':FloatermNew --height=0.99 --width=0.99 --autoclose=2 ranger<CR>')
end

--
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

M.common()

return M
