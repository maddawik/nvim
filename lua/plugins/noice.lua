return {
  "folke/noice.nvim",

  ---@module 'noice'
  ---@type NoiceConfig
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    lsp = {
      signature = {
        enabled = false,
      },
    },
    cmdline = {
      view = "cmdline",
    },
    format = {
      spinner = {
        name = "moon",
      },
    },
    presets = {
      command_palette = false,
    },
    views = {
      mini = {
        size = {
          max_height = 8,
        },
        -- win_options = {
        --   winblend = 0, -- INFO: transparency setting
        -- },
      },
    },
  },
}
