return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        -- hide_dotfiles = false,
        -- hide_gitignored = true,
        -- hide_by_name = {
        --   ".github",
        --   ".gitignore",
        --   "package-lock.json",
        -- },
        never_show = { ".git" },
      },
    },
    window = {
      mappings = {
        ["h"] = "close_node",
        ["l"] = "open",
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
      icon = {
        folder_closed = "󰉋",
        folder_open = "󰷏",
      },
      git_status = {
        symbols = {
          -- Change type
          added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = "", -- this can only be used in the git_status source
          renamed = "➜", -- this can only be used in the git_status source
          -- Status type
          untracked = "◌",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "",
        },
      },
    },
  },
}
