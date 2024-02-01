return {
  "epwalsh/obsidian.nvim",
  version = "*",
  ft = "markdown",
  opts = {
    templates = {
      subdir = "templates",
    },
    notes_subdir = "notes",
    daily_notes = {
      folder = "notes/dailies",
    },
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },
  },
  init = function()
    require("which-key").register({ o = { name = "+obsidian" } }, { prefix = "<leader>", mode = { "n", "v" } })
  end,
  keys = {
    { "<leader>ob", "<cmd>ObsidianBacklinks<CR>", desc = "Backlinks" },
    { "<leader>oh", "<cmd>ObsidianCheck<CR>", desc = "Check Health" },
    { "<leader>of", "<cmd>ObsidianFollowLink<CR>", desc = "Follow Link" },
    { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "New Link", mode = "v" },
    { "<leader>oL", "<cmd>ObsidianLinkNew<CR>", desc = "New Link & File", mode = "v" },
    { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "New Note" },
    { "<leader>oo", "<cmd>ObsidianOpen<CR>", desc = "Open Obsidian" },
    { "<leader>op", "<cmd>ObsidianPasteImg<CR>", desc = "Paste Image" },
    { "<leader>o<space>", "<cmd>ObsidianQuickSwitch<CR>", desc = "Find File" },
    { "<leader>or", "<cmd>ObsidianRename<CR>", desc = "Rename Note" },
    { "<leader>og", "<cmd>ObsidianSearch<CR>", desc = "Grep" },
    { "<leader>oN", "<cmd>ObsidianTemplate<CR>", desc = "New from Template" },
    { "<leader>od", "<cmd>ObsidianToday<CR>", desc = "Todays Note" },
    { "<leader>ot", "<cmd>ObsidianTomorrow<CR>", desc = "Tomorrows Note" },
    { "<leader>oy", "<cmd>ObsidianYesterday<CR>", desc = "Yesterdays Note" },
  },
}
