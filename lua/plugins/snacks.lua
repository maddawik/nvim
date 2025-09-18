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
        header = require("util.dashboard").get_header(),
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
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      width = 30,
      sections = {
        { section = "header" },
        { section = "keys", gap = 0, padding = 1 },
        { section = "startup", padding = 1 },
        -- footer
        {
          enabled = require("util.dashboard").rand_num() > 0.90,
          ---@class snacks.dashboard.Text
          text = { require("util.dashboard").get_quote(), hl = "Comment", align = "center" },
        },
      },
    },
  },
}
