local colorscheme = "zephyrium"
-- local colorscheme = "OceanicNext"
-- local colorscheme = "base16-tokyo-night-dark"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not foune!")
	return
end
