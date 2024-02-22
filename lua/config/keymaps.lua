-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Keymaps for tmux navigator
keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", opts)
keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", opts)
keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", opts)
keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", opts)

-- jk kj to exit insert mode
keymap.set("i", "jk", "<ESC>", opts)
keymap.set("i", "kj", "<ESC>", opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
