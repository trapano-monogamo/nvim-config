local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }



-- NORMAL MODE --

-- my snippets
keymap("n", "<leader>rustmain", ":-1read $HOME/.config/nvim/snippets/.rustmain<CR>o", opts)
keymap("n", "<leader>cppmain", ":-1read $HOME/.config/nvim/snippets/.cppmain<CR>o", opts)

-- moving between buffers
keymap("n", "<leader>n", ":bnext<CR>", opts)

-- resizing
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- open netrw file browser on the left with a width of 15
keymap("n", "<leader>e", ":Lex 14<CR>", opts)

-- open terminal in split
--keymap("n", "<leader>t", ":belowright split | resize 15 | term<CR>a", opts)
keymap("n", "<leader>t", ":split | resize 15 | term<CR>a", opts)



-- VISUAL MODE --

-- move text up and down
keymap("v", "<C-j>", ":m .+1<CR>==gv", opts)
keymap("v", "<C-k>", ":m .-2<CR>==gv", opts)

-- stop yanking after pasting on top of selection
keymap("v", "p", '"_dP', opts)

-- stay in visual mode after indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)



-- TERMINAL MODE --

-- esc
keymap("t", "<ESC>", "<C-\\><C-n>", opts)

-- accessing window commands in terminal
keymap("t", "<C-w>", "<C-\\><C-n><C-w>", opts)



-- Telescope --
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fm", ":Telescope media_files<CR>", opts)
