-- local status, ufoPlugIn = pcall(require, "ufo")
-- if not status then
--   vim.notify("没有找到 ufo")
--   return
-- end

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

local bufnr = vim.api.nvim_get_current_buf()

local handler = function(virtText, lnum, endLnum, width, truncate)
    local newVirtText = {}
    local suffix = ('  %d '):format(endLnum - lnum)
    local sufWidth = vim.fn.strdisplaywidth(suffix)
    local targetWidth = width - sufWidth
    local curWidth = 0
    for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
            table.insert(newVirtText, chunk)
        else
            chunkText = truncate(chunkText, targetWidth - curWidth)
            local hlGroup = chunk[2]
            table.insert(newVirtText, {chunkText, hlGroup})
            chunkWidth = vim.fn.strdisplaywidth(chunkText)
            -- str width returned from truncate() may less than 2nd argument, need padding
            if curWidth + chunkWidth < targetWidth then
                suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
            end
            break
        end
        curWidth = curWidth + chunkWidth
    end
    table.insert(newVirtText, {suffix, 'MoreMsg'})
    return newVirtText
end

local config = {
	enable_get_fold_virt_text = true,
	open_fold_hl_timeout = 150,
	fold_virt_text_handler = handler,
    preview = {
      win_config = {
        winhighlight = 'Normal:Folded',
        winblend = 0
      },
      mappings = {
        scrollU = '<C-u>',
        scrollD = '<C-d>'
      }
    },
  provider_selector = function()
    return {'treesitter', 'indent'}
  end
}

local M = {
	'kevinhwang91/nvim-ufo',
	config = function ()
		local ufo = require('ufo')
		ufo.setup(config)
		ufo.setFoldVirtTextHandler(bufnr, handler)

		vim.keymap.set('n', 'zR', ufo.openAllFolds)
		vim.keymap.set('n', 'zM', ufo.closeAllFolds)
		vim.keymap.set('n', 'zr', ufo.openFoldsExceptKinds)
		vim.keymap.set('n', 'zm', ufo.closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
		vim.keymap.set('n', 'K', function()
			local winid = ufo.peekFoldedLinesUnderCursor()
			if not winid then
				-- choose one of them
				-- coc.nvim
				vim.fn.CocActionAsync('definitionHover')
				-- nvimlsp
				vim.lsp.buf.hover()
			end
		end)
	end,
	dependencies = { {'kevinhwang91/promise-async'} }
}

return M

