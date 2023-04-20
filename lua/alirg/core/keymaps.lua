-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "nh", ":nohl<CR>")
keymap.set("n", ";", ":w<Enter>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set('n', 'dw', 'vb"_d')


-- increment/decrement numbers
keymap.set("n", "+", "<C-a>") -- increment
keymap.set("n", "-", "<C-x>") -- decrement

-- window management
keymap.set("n", "sv", "<C-w>v") -- split window vertically
keymap.set("n", "sh", "<C-w>s") -- split window horizontally
keymap.set("n", "se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "cl", ":q") -- close current split window

keymap.set("n", "to", ":tabnew<CR>") -- open new tab
keymap.set("n", "cl", ":q<Enter>") -- close current tab
keymap.set("n", "tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "tp", ":tabp<CR>") --  go to previous tab
keymap.set('n', 'te', ':tabedit')


----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "nn", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set('n', '<Space>', '<C-w>w')


-- telescope
keymap.set("n", "ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
