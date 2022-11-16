local status, colorizer = pcall(require, "colorizer")
if not status then
  vim.notify("没有找到 colorizer")
  return
end

local options = {
	filetype = { '*' },
	user_default_options = {
		RGB = true, -- #RGB hex codes
		RRGGBB = true, -- #RRGGBB hex codes
		names = true, -- "Name" codes like Blue or blue
		RRGGBBAA = true, -- #RRGGBBAA hex codes
		AARRGGBB = true, -- 0xAARRGGBB hex codes
		rgb_fn = true, -- CSS rgb() and rgba() functions
		hsl_fn = true, -- CSS hsl() and hsla() functions
		css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
		css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
		-- Available modes for `mode`: foreground, background,  virtualtext
		mode = 'background', -- Set the display mode.
		-- Available methods are false / true / "normal" / "lsp" / "both"
		-- True is same as normal
		tailwind = true, -- Enable tailwind colors
      -- parsers can contain values used in |user_default_options|
      --[[ sass = { enable = false, parsers = { css } }, -- Enable sass colors ]]
    },
  }
colorizer.setup(options)
-- return vim.tbl_isempty(options.filetypes or {}) or vim.cmd([[do FileType]])

