-- return {
--   "zbirenbaum/copilot.lua",
--   cmd = "Copilot",
--   build = ":Copilot auth",
--   event = "InsertEnter",
--   config = function()
--     require("copilot").setup({
--       suggestion = { enabled = true, auto_trigger = true, keymap = { accept = "<M-l>" }, debounce = 75 },
--       panel = { enabled = false },
--       filetypes = {
--         yaml = false,
--         markdown = false,
--         help = false,
--         gitcommit = false,
--         gitrebase = false,
--         hgcommit = false,
--         svn = false,
--         cvs = false,
--         ["."] = false,
--       },
--       copilot_node_command = vim.fn.expand("$HOMEBREW_PREFIX") .. "/opt/node@18/bin/node",
--     })
--   end,
-- }

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    suggestion = { enabled = true, auto_trigger = true, keymap = { accept = "<M-CR>" }, debounce = 75 },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      help = true,
    },
    experimental = {
      ghost_text = true,
    },
  },
}
