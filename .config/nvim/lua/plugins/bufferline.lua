return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      indicator_icon = " ",
      buffer_close_icon = "⨉",
      modified_icon = "●",
      close_icon = "⨉",
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 18,
      max_prefix_length = 15,
      tab_size = 18,
      diagnostics = "nvim_lsp",
      diagnostics_update_in_insert = true,
      diagnostics_indicator = function(count, level, _, _)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      show_tab_indicators = true,
      persist_buffer_sort = true,
      separator_style = "blank",
      enforce_regular_tabs = false,
      always_show_bufferline = true,
      sort_by = "extension",
      highlights = {
        background = {
          guibg = { attribute = "bg", highlight = "WinSeparator" },
        },
        close_button = {
          guibg = { attribute = "bg", highlight = "WinSeparator" },
        },
        separator = {
          guifg = { attribute = "fg", highlight = "WinSeparator" },
          guibg = { attribute = "bg", highlight = "WinSeparator" },
        },
        separator_selected = {
          guifg = { attribute = "fg", highlight = "WinSeparator" },
          guibg = { attribute = "bg", highlight = "WinSeparator" },
        },
        separator_visible = {
          guifg = { attribute = "fg", highlight = "WinSeparator" },
          guibg = { attribute = "bg", highlight = "WinSeparator" },
        },
        modified = {
          guifg = { attribute = "fg", highlight = "WinSeparator" },
        },
        modified_selected = {
          guifg = { attribute = "fg", highlight = "WinSeparator" },
        },
      },
      offsets = {
        {
          filetype = "neo-tree",
          text = "  File Explorer",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
}
