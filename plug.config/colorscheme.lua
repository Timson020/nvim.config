-- local colorscheme = "zephyrium"
-- local colorscheme = "OceanicNext"
-- local colorscheme = "base16-tokyo-night-dark"
-- local colorscheme = "base16-atelier-dune"
-- local colorscheme = "base16-atelier-lakeside"
-- local colorscheme = "base16-atlas"
-- local colorscheme = "base16-ayu-dark"
-- local colorscheme = "base16-da-one-sea"
-- local colorscheme = "base16-eighties"
-- local colorscheme = "base16-equilibrium-gray-dark"
-- local colorscheme = "base16-eva-dim"
-- local colorscheme = "base16-flat"
-- local colorscheme = "base16-helios"
-- local colorscheme = "base16-material"
-- local colorscheme = "base16-oceanicnext"
-- local colorscheme = "base16-silk-dark"
-- local colorscheme = "base16-solarflare"
local colorscheme = "base16-solarized-dark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not foune!")
	return
end
