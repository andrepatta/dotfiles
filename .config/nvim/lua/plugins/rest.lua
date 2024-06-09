return {
  {
    "vhyrro/luarocks.nvim",
    config = true,
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
    },
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    event = "BufEnter *.http",
    config = function()
      require("rest-nvim").setup()
      require("telescope").load_extension("rest")
    end,
    keys = {
      {
        "<leader>rr",
        "<cmd>Rest run<cr>",
        desc = "Run request under the cursor",
      },
      {
        "<leader>rl",
        "<cmd>Rest run last<cr>",
        desc = "Re-run latest request",
      },
      {
        "<leader>re",
        "<cmd>:Telescope rest select_env<cr>",
        desc = "Select environment",
      },
      {
        "<leader>rp",
        "<cmd>Rest run preview<cr>",
        desc = "Preview request under the cursor",
      },
    },
  },
}
