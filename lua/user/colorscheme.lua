vim.opt.termguicolors = true

-- local colorscheme = "onenord"
local colorscheme = "gruvbox"
-- local colorscheme = "default"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("Could not load colorscheme '" .. colorscheme .. "'")
	return
end
