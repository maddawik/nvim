return {
  "folke/snacks.nvim",
  ---@module "snacks"
  ---@class snacks.Config
  opts = {
    zen = {
      win = {
        backdrop = {
          transparent = false,
        },
      },
    },
    image = {
      enabled = true,
    },
    notifier = {
      margin = {
        top = 1,
      },
      style = "compact",
    },
    terminal = {
      win = {
        wo = {
          winbar = "",
        },
      },
    },
    picker = {
      previewers = {
        diff = {
          native = true,
        },
        git = {
          native = true,
        },
      },
    },
    dashboard = {
      preset = {
        header = false,
        keys = {
          {
            icon = " ",
            key = "d",
            desc = "Daily Note",
            action = ":Obsidian dailies",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "x", desc = "Extras", action = ":LazyExtras" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          {
            icon = " ",
            key = "z",
            desc = "Chezmoi",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.expand('~') .. '/.local/share/chezmoi/home/'})",
          },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      width = 30,
      sections = {
        { section = "keys", gap = 0, padding = 1 },
        { text = { require("util.dashboard").get_quote(), hl = "Comment", align = "center" } },
      },
    },
  },
}
