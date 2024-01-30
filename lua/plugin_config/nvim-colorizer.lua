local status, colorizer = pcall(require, "colorizer")
if not status then
  vim.notify("没有找到 colorizer")
  return
end

local options = {
	'html',
	'css',
	'less',
	'scss',
	'typescript',
	'javascript',
	'typescriptreact',
	'javascriptreact',
	'vue',
	'lua',
}
colorizer.setup(options, { mode = 'background' })
-- return vim.tbl_isempty(options.filetypes or {}) or vim.cmd([[do FileType]])

