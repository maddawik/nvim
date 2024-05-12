return {
  "nvimdev/dashboard-nvim",
  opts = {
    theme = "hyper",
    config = {
      -- packages = { enable = false },
      week_header = {
        enable = true,
      },
      project = {
        enable = false,
      },
      mru = {
        limit = 6,
        cwd_only = true,
      },
      footer = {},
      shortcut = {
        {
          desc = "lazy",
          icon = "󰒲 ",
          icon_hl = "@variable",
          group = "@exception",
          action = "Lazy",
          key = "l",
        },
        {
          desc = "session",
          icon = " ",
          icon_hl = "@variable",
          group = "Special",
          action = 'lua require("persistence").load()',
          key = "s",
        },
        {
          desc = "config",
          icon = " ",
          icon_hl = "@variable",
          group = "Number",
          action = [[lua require("lazyvim.util").telescope.config_files()()]],
          key = "c",
        },
        {
          desc = "quit",
          icon = " ",
          icon_hl = "@variable",
          group = "DiagnosticSignError",
          action = "qa",
          key = "q",
        },
      },
    },
  },
}
