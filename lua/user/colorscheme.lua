-- gruvbox, farout, onenord, jellybeans-nvim, default
local colorscheme = "gruvbox"
local transparent = true
vim.opt.termguicolors = true

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("Could not load colorscheme '" .. colorscheme .. "'")
	return
end

vim.cmd([[
set colorcolumn=
highlight ColorColumn guibg=#43454a

highlight! link SignColumn LineNr

highlight Pmenu guibg=gray
]])

if transparent then
	vim.cmd([[
		highlight Normal guibg=none
		highlight NonText guibg=none
	]])
end
