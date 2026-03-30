vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.opt.virtualedit = "onemore"

vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("i", "J", "<Esc>") -- exit insert with J
keymap("n", "L", "$", { noremap = true, silent = true })
keymap("n", "H", "^")     -- beginning of line
keymap("v", "L", "$", { noremap = true, silent = true })
keymap("v", "H", "^")     -- beginning of line
keymap("n", "<Esc>", ":")
