-- local status, todo_comment = pcall(require, "todo-comments")
--
-- if not status then
--   vim.notify("没有找到 todo-comments")
--   return
-- end

local config = {
  signs = true, -- show icons in the signs column
  sign_priority = 8, -- sign priority
  -- keywords recognized as todo comments
  keywords = {
    FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "hack" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
  },
  gui_style = {
    fg = "NONE", -- The gui style to use for the fg highlight group.
    bg = "BOLD", -- The gui style to use for the bg highlight group.
  },
  merge_keywords = true, -- when true, custom keywords will be merged with the defaults
  -- highlighting of the line containing the todo comment
  -- * before: highlights before the keyword (typically comment characters)
  -- * keyword: highlights of the keyword
  -- * after: highlights after the keyword (todo text)
  highlight = {
    multiline = true, -- enable multine todo comments
    multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
    multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
    before = "", -- "fg" or "bg" or empty
    keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
    after = "fg", -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlightng (vim regex)
    comments_only = true, -- uses treesitter to match keywords in comments only
    max_line_len = 400, -- ignore lines longer than this
    exclude = {}, -- list of file types to exclude highlighting
  },
  -- list of named colors where we try to extract the guifg from the
  -- list of highlight groups or use the hex color if hl not found as a fallback
  colors = {
		-- #2196f3
		-- #00FF00	
		-- #69e8bf
		-- #f78279
		-- #ffc0cb 
		-- #e31159
		-- #f3dd18
		-- #9c27b0
		-- #7C3AED
		--
    info = { "#2196f3" },
    warning = { "#f3dd18" },
    error = { "#e31159" },
		hack = { "#f78279" },
    hint = { "#69e8bf" },
    test = { "#9c27b0" },
    default = { "#00FF00" },
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS)]], -- ripgrep regex
    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  },
}

local M = {
	'folke/todo-comments.nvim',
	config = function ()
		local todo = require('todo-comments')
		todo.setup(config)
	end
}

return M

