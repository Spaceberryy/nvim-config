vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("i", "J", "<Esc>") -- exit insert with J
keymap("n", "L", "$")     -- end of line
keymap("n", "H", "^")     -- beginning of line
keymap("n", "<Esc>", ":")
