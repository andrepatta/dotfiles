-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_custom_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = augroup("templ_format_on_save"),
  pattern = "*.templ",
  callback = function()
    if vim.bo.filetype == "templ" then
      local bufnr = vim.api.nvim_get_current_buf()
      local filename = vim.api.nvim_buf_get_name(bufnr)
      local cmd = "templ fmt " .. vim.fn.shellescape(filename)

      vim.fn.jobstart(cmd, {
        on_exit = function()
          -- Reload the buffer only if it's still the current buffer
          if vim.api.nvim_get_current_buf() == bufnr then
            vim.cmd("e!")
          end
        end,
      })
    end
  end,
})

vim.api.nvim_create_autocmd("FocusLost", {
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
