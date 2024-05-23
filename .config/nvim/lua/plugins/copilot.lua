return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    suggestion = { enabled = true, auto_trigger = true, keymap = { accept = "<M-l>" }, debounce = 75 },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
