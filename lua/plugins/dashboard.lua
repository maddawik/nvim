return {
  "nvimdev/dashboard-nvim",
  opts = {
    theme = "hyper",
    config = {
      week_header = {
        enable = true,
      },
      mru = { limit = 6 },
      footer = {},
      shortcut = {
        {
          desc = "dailies",
          icon = " ",
          icon_hl = "@variable",
          group = "@constructor",
          action = "ObsidianDailies",
          key = "d",
        },
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
          desc = "chezmoi",
          icon = " ",
          icon_hl = "@variable",
          group = "@function",
          action = 'lua require("telescope").extensions.chezmoi.find_files()',
          key = "C",
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
