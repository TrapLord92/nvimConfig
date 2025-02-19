-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Keybinding to open a terminal in a split window
vim.api.nvim_set_keymap('n', '<leader>tt', ':terminal<CR>', { noremap = true, silent = true })

