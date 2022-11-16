local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("没有找到 nvim-tree")
  return
end

local list_keys = {
	-- 打开文件或文件夹
  { key = {"e", "<CR>"}, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  { key = "t", action = "tabnew" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  { key = "<F5>", action = "refresh" },
  { key = "n", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "m", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
	{ key = "<Tab>", action = "preview" },
}

nvim_tree.setup({
		view = {
      -- 宽度
      width = 60,
      -- 也可以 'right'
      side = 'left',
      -- 隐藏根目录
      hide_root_folder = false,
      -- 自定义列表中快捷键
      mappings = {
          custom_only = true,
					list = list_keys,
      },
      -- 不显示行数
      number = false,
      relativenumber = false,
      -- 显示图标
      signcolumn = 'yes',
  	},
		renderer = {
			indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = {
          corner = "└",
          edge = "│",
          item = "│",
          none = " ",
        },
      },
			icons = {
				webdev_colors = true,
				padding = "  ",
				show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
				glyphs = {
					default = " ",
        	symlink = " ",
          bookmark = " ",
					folder = {
						arrow_open = " ",
						arrow_closed = " ",
						default = " ",
						open = " ",
						empty = " ",
						empty_open = " ",
						symlink = " ",
						symlink_open = " ",
					},
					git = {
						unstaged = "✗",
						staged = "✓",
						unmerged = "",
						renamed = "➜",
						untracked = "★",
						deleted = "",
						ignored = "◌",
					},
				}
			}
		},
    -- 不显示 git 状态图标
    git = {
    	enable = true,
    },
    -- project plugin 需要这样设置
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
    -- 隐藏 .文件 和 node_modules 文件夹
    filters = {
      dotfiles = false,
      custom = { 'node_modules' },
    },
		diagnostics = {
    	enable = false,
    	show_on_dirs = false,
    	icons = {
      	hint = "",
      	info = "",
      	warning = "",
      	error = "",
    	},
  	},
    actions = {
      open_file = {
        -- 首次打开大小适配
        resize_window = true,
        -- 打开文件时关闭
        quit_on_open = false,
      },
    },
    system_open = {
      cmd = 'open', -- mac 直接设置为 open
    },
})

-- 自动关闭
vim.cmd([[
	autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

