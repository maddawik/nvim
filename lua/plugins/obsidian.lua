return {
  "epwalsh/obsidian.nvim",
  version = "*",
  ft = "markdown",
  opts = {
    follow_url_func = function(url)
      vim.fn.jobstart({ "open", url })
    end,
    templates = {
      subdir = "templates",
    },
    notes_subdir = "inbox",
    new_notes_location = "notes_subdir",
    daily_notes = {
      folder = "inbox/dailies",
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
    disable_frontmatter = function(file)
      return string.find(file, "-presenterm.md") -- Don't format presenations
    end,
  },
  init = function()
    require("which-key").register({ o = { name = "+obsidian" } }, { prefix = "<leader>", mode = { "n", "v" } })
  end,
  keys = {
    { "<leader>ob", "<cmd>ObsidianBacklinks<CR>", desc = "Backlinks" },
    { "<leader>oe", "<cmd>ObsidianExtractNote<CR>", desc = "Extract Note", mode = "v" },
    { "<leader>oh", "<cmd>ObsidianCheck<CR>", desc = "Check Health" },
    { "<leader>of", "<cmd>ObsidianFollowLink<CR>", desc = "Follow Link" },
    { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "New Link", mode = "v" },
    { "<leader>oL", "<cmd>ObsidianLinkNew<CR>", desc = "New Link & File", mode = "v" },
    { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "New Note" },
    { "<leader>oo", "<cmd>ObsidianOpen<CR>", desc = "Open Obsidian" },
    { "<leader>op", "<cmd>ObsidianPasteImg<CR>", desc = "Paste Image" },
    { "<leader>or", "<cmd>ObsidianRename<CR>", desc = "Rename Note" },
    { "<leader>og", "<cmd>ObsidianSearch<CR>", desc = "Grep" },
    { "<leader>ot", "<cmd>ObsidianTemplate<CR>", desc = "Insert Template" },
    { "<leader>od", "<cmd>ObsidianToday<CR>", desc = "Todays Note" },
    { "<leader>oD", "<cmd>ObsidianTomorrow<CR>", desc = "Tomorrows Note" },
    { "<leader>oy", "<cmd>ObsidianYesterday<CR>", desc = "Yesterdays Note" },
    { "<leader>ow", "<cmd>ObsidianWorkspace<CR>", desc = "Change Workspace" },
    { "<leader>o<space>", "<cmd>ObsidianQuickSwitch<CR>", desc = "Find File" },
  },
}
