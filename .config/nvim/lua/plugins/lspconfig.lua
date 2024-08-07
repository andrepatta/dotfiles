return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      templ = {
        filetypes = { "templ" },
      },
      tailwindcss = {
        filetypes = { "templ", "astro", "javascript", "typescript", "react" },
        init_options = { userLanguages = { templ = "html" } },
      },
      html = {
        filetypes = { "html", "templ" },
        init_options = {
          provideFormatter = vim.bo.filetype == "templ",
        },
      },
      htmx = {
        filetypes = { "html", "templ" },
      },
    },
  },
}
