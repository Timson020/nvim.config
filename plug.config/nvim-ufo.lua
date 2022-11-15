local status, ufoPlugIn = pcall(require, "ufo")
if not status then
  vim.notify("没有找到 ufo")
  return
end

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', 'zR', ufoPlugIn.openAllFolds)
vim.keymap.set('n', 'zM', ufoPlugIn.closeAllFolds)
vim.keymap.set('n', 'zr', ufoPlugIn.openFoldsExceptKinds)
vim.keymap.set('n', 'zm', ufoPlugIn.closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
vim.keymap.set('n', 'K', function()
  local winid = ufoPlugIn.peekFoldedLinesUnderCursor()
  if not winid then
    -- choose one of them
    -- coc.nvim
    vim.fn.CocActionAsync('definitionHover')
    -- nvimlsp
    vim.lsp.buf.hover()
  end
end)

local bufnr = vim.api.nvim_get_current_buf()

local handler = function(virtText, lnum, endLnum, width, truncate)
    local newVirtText = {}
    local suffix = ('  %d '):format(endLnum - lnum)
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
ufoPlugIn.setup({
	open_fold_hl_timeout = 150,
	fold_virt_text_handler = handler,
	close_fold_kinds = {'imports', 'comment'},
    preview = {
      win_config = {
        -- border = {'', '─', '', '', '', '─', '', ''},
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
})
ufoPlugIn.setFoldVirtTextHandler(bufnr, handler)