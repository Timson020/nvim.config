local status, telescope = pcall(require, "telescope")

if not status then
  vim.notify("没有找到 telescope")
  return
end

local telescopeList = {
	i = {
		[ '<C-i>' ] = 'select_default',
		[ '<C-h>' ] = 'select_horizontal',
		[ '<C-v>' ] = 'select_vertical',
		[ '<C-t>' ] = 'select_tab',
	},
	n = {
		[ 'i' ] = 'select_default',
		[ 'h' ] = 'select_horizontal',
		[ 'v' ] = 'select_vertical',
		[ 't' ] = 'select_tab',
	}
}

local customConfig = {
  defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
		selection_caret = "   ",
		prompt_prefix = '  ',
		layout_strategy = "horizontal",
		sorting_strategy = "ascending",
		border = true,
    -- 窗口内快捷键
    mappings = telescopeList,
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

telescope.setup(customConfig)
telescope.load_extension("ui-select")

