-- basic options

local options = {
	compatible = false,
	backup = false,
	swapfile = false,
	clipboard = "unnamedplus",
	completeopt = { "menuone", "noselect" },
	cmdheight = 1,
	splitright = true,
	splitbelow = true,
	showtabline = 1,
	number = true,
	numberwidth = 2,
	signcolumn = "yes", -- signs will occupy an already present column
	smartcase = true,
	smartindent = true,
	shiftwidth = 4,
	tabstop = 4,
	expandtab = false,
	cursorline = true,
	wrap = false,
	wildmenu = true,
	pumheight = 10,
	is = true,
	hls = false,
	ignorecase = true,
	scrolloff = 5,
	sidescrolloff = 5,
}

for k,v in pairs(options) do
	vim.opt[k] = v
end



-- other options

vim.g.netrw_banner = 0 -- remove banner
vim.g.netrw_liststyle = 3 -- tree view
vim.g.mapleader = " "
vim.opt.path:append { "**" }
vim.opt.tags:append { "./vim/tags" }



-- misc

vim.cmd([[
command! MakeTags !ctags -R .

syntax enable
filetype plugin on


function! GitBranch()
	let branch_name = system('git branch 2>/dev/null | grep *')
	return "" . branch_name
endfunction

set laststatus=2 " status line enabled all the time

set statusline=
set statusline+=\ %h\ %f\ %m
set statusline+=\ %p%{'%'}\ %l:%L\ %c
" set statusline+=\ %{GitBranch()}
]])
