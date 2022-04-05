local cmp = require("cmp")

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
  -- 指定 snippet 引擎
  snippet = {
    expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  -- 补全源
  sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
	}, {
		{ name = "buffer" },
		{ name = "path" },
	}),

  -- 快捷键设置
	mapping = {
		["<C-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),

		["<CR>"] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace
    }),

		-- super Tab
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif vim.fn["vsnip#available"](1) == 1 then
        feedkey("<Plug>(vsnip-expand-or-jump)", "")
      elseif has_words_before() then
        cmp.complete()
      else
				-- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        fallback()
      end
  	end, {"i", "s"}),

		["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, {"i", "s"}),
	},
})

-- / 查找模式使用 buffer 源
cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" },
  },
})

-- : 命令行模式中使用 path 和 cmdline 源.
cmp.setup.cmdline(":", {
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})

-- vim.g.vsnip_snippet_dir = '~/.config/nvim/plugged/friendly-snippets/snippets'
