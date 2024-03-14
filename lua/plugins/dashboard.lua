local folder_path = vim.fn.expand("~") .. "/vaults/work/inbox"
local is_work = vim.fn.isdirectory(folder_path)

local function dailies()
  local client = require("obsidian").get_client()
  if is_work == 1 and not (client.current_workspace.name == "work") then
    client.switch_workspace(client, "work")
  end
  vim.cmd("ObsidianDailies")
end

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
          action = dailies,
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
