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

telescope.setup({
  defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
    -- 窗口内快捷键
    mappings = telescopeList,

		layout_config = {
			vertical = {
				width = 0.5
			}
		}
  },
  pickers = {
    -- 内置 pickers 配置
    find_files = {
      -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
			-- theme = "ivy", 
    }
  },
  extensions = {
     -- 扩展插件配置
  },
})
