local function pickQuote()
  -- Small chance of encouragement from Master Miller
  math.randomseed(os.time())
  if math.random() > 0.98 then
    return [[
Sometimes in combat or when you're near the end of your rope,
You can see things that normally aren't there or shouldn't be there.
Relax. It's not a bug. It's just the mysteries of the human mind.

• Master Miller
]]
  else
    return ""
  end
end

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
    dashboard = {
      preset = {

        header = [[
  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
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
      width = 40,
      sections = {
        { section = "header" },
        { section = "keys", gap = 0, padding = 1 },
        { section = "startup", padding = 1 },
        -- footer
        {
          ---@class snacks.dashboard.Text
          text = { pickQuote(), hl = "Special", align = "center" },
        },
      },
    },
  },
}
