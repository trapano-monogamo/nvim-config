-- gruvbox, farout, onenord, jellybeans-nvim, default
local colorscheme = "default"
local transparent = false
vim.opt.termguicolors = true

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("Could not load colorscheme '" .. colorscheme .. "'")
	return
end

vim.cmd([[
set colorcolumn=
highlight ColorColumn guibg=#43454a
]])

if transparent then
	vim.cmd([[
		highlight Normal guibg=none
		highlight NonText guibg=none
	]])
end

if colorscheme == "default" then
	vim.cmd([[
		highlight LineNr guibg=#000000 guifg=#DDDC00
		highlight SignColumn guibg=#000000
		highlight Pmenu guibg=#000000
	]])
end
