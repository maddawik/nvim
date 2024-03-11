local folder_path = vim.fn.expand("~") .. "/vaults/work/inbox"
local is_work = vim.fn.isdirectory(folder_path)

local function today()
  if is_work == 1 then
    vim.cmd("ObsidianWorkspace work")
  end
  vim.cmd("ObsidianToday")
end

local function yesterday()
  if is_work == 1 then
    vim.cmd("ObsidianWorkspace work")
  end
  vim.cmd("ObsidianYesterday")
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
          desc = "today",
          icon = " ",
          icon_hl = "@variable",
          group = "@constructor",
          action = today,
          key = "d",
        },
        {
          desc = "yesterday",
          icon = "󰇡 ",
          icon_hl = "@variable",
          group = "Error",
          action = yesterday,
          key = "y",
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
