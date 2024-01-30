
local action = require('telescope.actions')
local action_layout = require('telescope.actions.layout')

local telescopeList = {
	i = {
		[ '<C-i>' ] = 'select_default',
		[ '<C-h>' ] = 'select_horizontal',
		[ '<C-v>' ] = 'select_vertical',
		[ '<C-t>' ] = 'select_tab',
	},
	n = {
		['<Esc>'] = action.close,
		[ 'i' ] = 'select_default',
		[ 'h' ] = 'select_horizontal',
		[ 'v' ] = 'select_vertical',
		[ 't' ] = 'select_tab',
		[ 'e' ] = action_layout.toggle_preview,
		[ '<C-k>' ] = action.preview_scrolling_up,
		[ '<C-j>' ] = action.preview_scrolling_down,
	}
}

local config = {
  defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
		selection_caret = "",
		prompt_prefix = '   ',
		results_title = '~ Result ~',
		layout_strategy = "horizontal",
		sorting_strategy = "descending",
		border = true,
    -- 窗口内快捷键
    mappings = telescopeList,

		file_previewer = require('telescope.previewers').vim_buffer_cat.new
  },
  pickers = {
    -- 内置 pickers 配置
    find_files = {
      -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
			-- theme = "cursor"
    }
  },
  extensions = {
     -- 扩展插件配置
		 ["ui-select"] = {
			require("telescope.themes").get_dropdown {
        -- even more opts
      }
		 }
  },
}

local M = {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	config = function()
		local tel = require('telescope')
		tel.setup(config)
		tel.load_extension("ui-select")
	end,
	dependencies = { 'nvim-lua/plenary.nvim' }
}

return M
