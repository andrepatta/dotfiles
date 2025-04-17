return {
  {
    "catppuccin",
    opts = {
      transparent_background = true,
    },
  },
  {
    "tokyonight.nvim",
    lazy = false,
    priority = 1000,
    -- opts = {},
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "moon",
      styles = {
        italic = false,
        -- transparency = true,
      },
    },
  },
}
