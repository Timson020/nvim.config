local status, icon = pcall(require, "nvim-web-devicons")

if not status then
	vim.notify("没找到 icon 配置库")
	return
end

icon.setup {
	color_icons = true,
	default = true,
	strict = true,
	override_by_filename = {
		["*.ts"] = {
			icon = " ",
			color = "#ff9800",
			name = "Ts"
		},
		["src"] = {
			icon = " ",
			color = "#ff9800"
		},
		[".git"] = {
			icon = " ",
			color = "#ff9800",
			name = "Gitignore"
		},
		[".github"] = {
			icon = " ",
			color = "#ef3b78",
			name = "Github"
		},
		["node_modules"] = {
			icon = "󰎙 ",
      color = "#25dea7",
      name = "NodeModules",
		}
	},
	override_by_extension = {

	}
}

