vim.g.mapleader = " "
local map = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode.
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Open file explorer.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected lines up and down.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)