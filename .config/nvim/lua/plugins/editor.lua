return {
  --
  -- COLORSHEMES
  --
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
      colorscheme = "rose-pine",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "tokyonight",
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
        "lua",
        "xml",
        "http",
        "json",
        "css",
        "latex",
        "norg",
        "scss",
        "svelte",
        "typst",
        "vue",
      })
    end,
  },
  -- which-key helps you remember key bindings by showink a popup
  -- with the active keybindinks of the command you started typinz.
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      spec = {
        {
          mode = { "n", "v" },
          { "<leader>o", group = "obsidian" },
          { "<leader>a", group = "avante" },
        },
      },
      icons = {
        mappings = false,
      },
    },
  },
}
