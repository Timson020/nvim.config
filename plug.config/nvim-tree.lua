local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("没有找到 nvim-tree")
  return
end

local function attachFn(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  -- api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<CR>', api.tree.change_root_to_node,   opts('Enter'))
  vim.keymap.set('n', 'e', api.node.open.edit,                opts('Open'))
  vim.keymap.set('n', '<Tab>', api.node.open.preview,         opts('Preview'))
	vim.keymap.set('n', 't', api.node.open.tab,                 opts('Tab'))
  vim.keymap.set('n', 'v', api.node.open.vertical,            opts('Vertical'))
  vim.keymap.set('n', 'h', api.node.open.horizontal,          opts('Horizontal'))

  vim.keymap.set('n', '.', api.tree.toggle_hidden_filter,     opts('Dot file'))
  vim.keymap.set('n', 'i', api.tree.toggle_gitignore_filter,  opts('Ignore file'))

  vim.keymap.set('n', 'n', api.fs.create,                     opts('Create'))
  vim.keymap.set('n', 'd', api.fs.remove,                     opts('Delete'))
  vim.keymap.set('n', 'r', api.fs.rename_basename,            opts('Rename'))
  vim.keymap.set('n', 'm', api.fs.cut,                        opts('Cut'))
  vim.keymap.set('n', 'c', api.fs.copy.node,                  opts('Copy'))
  vim.keymap.set('n', 'p', api.fs.paste,                      opts('Paste'))
  vim.keymap.set('n', 'C', api.fs.copy.filename,              opts('Copy Name'))
end

nvim_tree.setup({
		view = {
      -- 宽度
      width = 60,
      -- 也可以 'right'
      side = 'left',
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
				padding = " ",
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
						arrow_open = "",
						arrow_closed = "",
						default = "",
						open = "",
						empty = "",
						empty_open = "",
						symlink = "",
						symlink_open = "",
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
		on_attach = attachFn,
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

