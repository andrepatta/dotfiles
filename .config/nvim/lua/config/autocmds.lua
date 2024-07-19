-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_custom_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = { "*.templ" }, callback = LazyVim.lsp.format })

-- Workaround to get Raycast AI commands to identify selected text in Neovim
vim.api.nvim_create_autocmd("FocusLost", {
  group = augroup("copy_selection_on_focus_lost"),
  desc = "Keep * synced with selection",
  callback = function()
    local mode = vim.fn.mode(false)
    if mode == "v" or mode == "V" or mode == "\22" then
      vim.fn.setreg("*", vim.fn.getregion(vim.fn.getpos("."), vim.fn.getpos("v"), { type = mode }))
    end
  end,
})

-- Not the ideal place for this but it's fine.
-- This enables dap loading config from vscode launch.json
if vim.fn.filereadable(vim.uv.cwd() .. "/.vscode/launch.json") then
  require("dap.ext.vscode").load_launchjs()
end
