local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer. Close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print "Could not load packer module..."
	return
end

packer.init{
	display = {
		open_fn = function()
			return require('packer.util').float { border = "rounded" }
		end,
	},
}

-- install plugins

return packer.startup(function(use)
	-- My plugins
	
	--[[
	to install a plugin use "plugin".
	A table can also be used to include options for the plugin you want to install (a table per plugin)
		* plugins as string,
		* options as key = value
	--]]
	use { "wbthomason/packer.nvim" --[[ have packer manage itself --]] }
	use "lunarvim/colorschemes"
	use "nvim-lua/popup.nvim"
	use { "ellisonleao/gruvbox.nvim" }

	-- colorschemes
	use "folke/tokyonight.nvim"
	use "fcpg/vim-farout"
	use "rktjmp/lush.nvim"
	use "metalelf0/jellybeans-nvim"

	-- quality of life
	use { "nvim-tree/nvim-tree.lua", requires = {{ "nvim-tree/nvim-web-devicons" }} }
	use "nvim-treesitter/nvim-treesitter"
	use { "junegunn/fzf", run = "fzf#install()" }
	use "junegunn/fzf.vim"

	-- cmp plugins
	use "hrsh7th/nvim-cmp" -- completion plugin (LSP also works alongside this)
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "hrsh7th/cmp-nvim-lua"
	use "saadparwaiz1/cmp_luasnip"
	use "hrsh7th/cmp-nvim-lsp"

	-- snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

	-- LSP
	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"

	-- Telescope
	use {
		"nvim-telescope/telescope.nvim",
		requires = {{ "nvim-lua/plenary.nvim" }}
	}
	use "nvim-telescope/telescope-media-files.nvim"

	use "ThePrimeagen/vim-be-good"

	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)
