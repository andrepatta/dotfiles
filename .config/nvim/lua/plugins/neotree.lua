return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        never_show = { ".git" },
      },
      components = {
        harpoon_index = function(config, node, _)
          local harpoon_list = require("harpoon"):list()
          local path = node:get_id()
          local harpoon_key = vim.uv.cwd()

          for i, item in ipairs(harpoon_list.items) do
            local value = item.value
            if string.sub(item.value, 1, 1) ~= "/" then
              value = harpoon_key .. "/" .. item.value
            end

            if value == path then
              return {
                text = string.format(" ⥤ %d", i),
                highlight = config.highlight or "NeoTreeDirectoryIcon",
              }
            end
          end
          return {}
        end,
      },
      renderers = {
        file = {
          { "icon" },
          { "name", use_git_status_colors = true },
          { "harpoon_index" },
          { "diagnostics" },
          { "git_status", highlight = "NeoTreeDimText" },
        },
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
        with_expanders = true,
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
          added = "",
          modified = "",
          deleted = "",
          renamed = "➜",
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
