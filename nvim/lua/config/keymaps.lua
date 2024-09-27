-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, slient = true }

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- ctrl+backspace deleteing, <C-BS> registers as <C-H>
vim.keymap.set("i", "<C-H>", "<C-W>")
vim.keymap.set("i", "<C-BS>", "<C-W>")

-- some nice movement commands that keep the cursor in the middle of the screen
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- for inserting newlines in normal mode
vim.keymap.set("n", "<leader>o", 'o<esc>0_"D')

vim.keymap.set("n", "<leader>O", 'O<esc>0_"D')
