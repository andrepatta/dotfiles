return {
  --
  -- COLORSHEMES
  --
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  --
  -- TREESITTER
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "go",
        "templ",
        "lua",
        "xml",
        "http",
        "json",
        "graphql",
      })
    end,
  },
  -- which-key helps you remember key bindings by showing a popup
  -- with the active keybindings of the command you started typing.
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        mode = { "n", "v" },
        ["<leader>W"] = { name = "+windows" },
        ["<leader>R"] = { name = "REST" },
      },
    },
    keys = {
      { "<leader>w", "<cmd>w<cr><esc>", desc = "Save buffer" },
    },
  },
  -- add telescope-fzf-native
  -- {
  --   "telescope.nvim",
  --   dependencies = {
  --     "nvim-telescope/telescope-fzf-native.nvim",
  --     build = "make",
  --     config = function()
  --       require("telescope").load_extension("fzf")
  --     end,
  --   },
  -- },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      {
        "zbirenbaum/copilot-cmp",
        dependencies = "copilot.lua",
        opts = {},
        config = function(_, opts)
          local copilot_cmp = require("copilot_cmp")
          copilot_cmp.setup(opts)
          LazyVim.lsp.on_attach(function(client)
            if client.name == "copilot" then
              copilot_cmp._on_insert_enter({})
            end
          end)
        end,
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      opts.completion = {
        completeopt = "menu,menuone,noselect,noinsert",
      }

      table.insert(opts.sources, 1, {
        name = "copilot",
        group_index = 1,
        priority = 100,
      })

      opts.sorting.comparators = vim.tbl_extend("force", opts.sorting.comparators, {
        require("copilot_cmp.comparators").prioritize,
      })

      -- opts.mapping = vim.tbl_extend("force", opts.mapping, {
      --   ["<CR>"] = cmp.mapping.confirm({ select = false }),
      -- })
    end,
  },
}
