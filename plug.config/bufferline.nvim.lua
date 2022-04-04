local status, bufferline = pcall(require, "bufferline")
if not status then
		vim.notify("没有找到 bufferline")
	return
end

bufferline.setup({
  options = {
		mode = "tabs",
		separator_style = "padded_slant",
		numbers = "ordinal",
		left_trunc_marker = '  ',
		right_trunc_marker = '  ',
		modified_icon = " ● ",
		indicator_icon = "▎ ",
		show_close_icon = false,
		show_buffer_close_icons = true,
		show_tab_indicators = true,
		tab_size = 34,
		max_name_length = 18,
		always_show_bufferline = true,
		-- 关闭 Tab 的命令，这里使用 moll/vim-bbye 的 :Bdelete 命令
		close_command = "Bdelete! %d",
		right_mouse_command = "Bdelete! %d",
    -- 侧边栏配置
    -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    },
    -- 使用 nvim 内置 LSP  后续课程会配置
    diagnostics = "nvim_lsp",
    -- 可选，显示 LSP 报错图标
    ---@diagnostic disable-next-line: unused-local
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and "   " or (e == "warning" and "   " or "  ")
        s = s .. n .. sym
      end
      return s
    end,
  },
})
