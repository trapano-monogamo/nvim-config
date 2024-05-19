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
	relativenumber = false,
	numberwidth = 2,
	signcolumn = "yes",
	smartcase = true,
	smartindent = true,
	shiftwidth = 4,
	tabstop = 4,
	expandtab = false,
	cursorline = false,
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
set guicursor=i:block

" autocmd FileType haskell setlocal shiftwidth=1 softtabstop=1 expandtab
" autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no
" autocmd FileType markdown setlocal wrap linebreak

" set formatoptions-=c
" set formatoptions-=r
" set formatoptions-=o
" 
" command! MakeTags !ctags -R .
" 
" syntax enable
" filetype plugin on
" 
" 
" function! GitBranch()
" 	let branch_name = system('git branch 2>/dev/null | grep *')
" 	return "" . branch_name
" endfunction
" 
" set laststatus=2 " status line enabled all the time
" 
" set statusline=
" set statusline+=\ %h\ %f\ %m
" set statusline+=\ %p%{'%'}\ %l:%L\ %c
" set statusline+=\ %{GitBranch()}
]])
