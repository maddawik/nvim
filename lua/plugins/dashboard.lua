local function pickQuote()
  -- Small chance of encouragement from Master Miller
  math.randomseed(os.time())
  if math.random() > 0.98 then
    return {
      "",
      "\"Sometimes in combat or when you're near the end of your rope,",
      "You can see things that normally aren't there or shouldn't be there.",
      "Relax. It's not a bug. It's just the mysteries of the human mind.\"",
      "",
      "• Master Miller",
    }
  else
    return {}
  end
end

return {
  "nvimdev/dashboard-nvim",
  opts = {
    theme = "hyper",
    config = {
      project = {
        enable = false,
      },
      week_header = {
        enable = true,
      },
      mru = {
        limit = 6,
        cwd_only = true,
      },
      footer = pickQuote(),
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
          action = LazyVim.pick.config_files(),
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
