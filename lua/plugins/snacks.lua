return {
  "folke/snacks.nvim",
  ---@module "snacks"
  ---@class snacks.Config
  opts = {
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
            action = ":ObsidianDailies",
          },
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
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
