return {
  "folke/noice.nvim",

  ---@module 'noice'
  ---@type NoiceConfig
  opts = {
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
