-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Replace window keymaps
-- First disable defaults then set new keymaps
-- vim.keymap.del("n", "<leader>ww")
-- vim.keymap.del("n", "<leader>wd")
-- vim.keymap.del("n", "<leader>wm")
-- vim.keymap.del("n", "<leader>w-")
-- vim.keymap.del("n", "<leader>w|")
-- vim.keymap.del("n", "<leader>-")
-- vim.keymap.del("n", "<leader>|")

-- vim.keymap.set("n", "<leader>Ww", "<C-W>p", { desc = "Other window", remap = true })
-- vim.keymap.set("n", "<leader>Wd", "<C-W>c", { desc = "Delete window", remap = true })
-- vim.keymap.set("n", "<leader>Wj", "<C-W>s", { desc = "Split window below", remap = true })
-- vim.keymap.set("n", "<leader>Wl", "<C-W>v", { desc = "Split window right", remap = true })

-- Save buffer with <leader>w
-- vim.keymap.del({ "i", "x", "n", "s" }, "<C-s>")
-- keybind is set in plugins/editor.lua

vim.keymap.del("n", "<leader>`")
vim.keymap.del("n", "<leader>K")

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Split line with X
vim.keymap.set("n", "X", ":keeppatterns substitute/\\s*\\%#\\s*/\\r/e <bar> normal! ==^<cr>", { silent = true })

-- Toggle fold in normal mode
vim.keymap.set("n", "<TAB>", "za", { noremap = true, silent = true })
