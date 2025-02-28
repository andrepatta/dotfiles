-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Configure go templ filetype and format on save
vim.filetype.add({ extension = { templ = "templ" } })

local opt = vim.opt

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- backspace
opt.backspace = "indent,eol,start"

vim.o.scrolloff = 8

-- disable snacks animations
vim.g.snacks_animate = false
