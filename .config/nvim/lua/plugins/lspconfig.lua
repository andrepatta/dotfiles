return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      templ = {},
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
