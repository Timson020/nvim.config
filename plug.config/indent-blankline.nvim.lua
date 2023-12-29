local status, indent_blankline = pcall(require, "ibl")
if not status then
  vim.notify("没有找到 indent_blankline")
  return
end

indent_blankline.setup()

