local personal_vault = vim.fn.expand("~") .. "/vaults/personal"
local work_vault = vim.fn.expand("~") .. "/vaults/work"

local function get_local_workspaces()
  local folder_path = vim.fn.expand("~") .. "/vaults/work/.git"
  local is_work = vim.fn.isdirectory(folder_path)

  local workspaces = {
    {
      name = "personal",
      path = personal_vault,
    },
  }

  if is_work == 1 then
    table.insert(workspaces, 1, {
      name = "work",
      path = work_vault,
    })
  end

  return workspaces
end

return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>o"] = { name = "+obsidian" },
      },
    },
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    event = {
      "BufReadPre " .. personal_vault .. "/**.md",
      "BufReadPre " .. work_vault .. "/**.md",
      "BufNewFile " .. personal_vault .. "/**.md",
      "BufNewFile " .. work_vault .. "/**.md",
    },
    cmd = {
      "ObsidianWorkspace",
      "ObsidianDailies",
    },
    opts = {
      follow_url_func = function(url)
        vim.fn.jobstart({ "open", url })
      end,
      templates = {
        subdir = "templates",
      },
      log_level = vim.log.levels.ERROR,
      notes_subdir = "inbox",
      new_notes_location = "notes_subdir",
      daily_notes = {
        folder = "inbox/dailies",
      },
      workspaces = get_local_workspaces(),
      disable_frontmatter = function(file)
        return string.find(file, "-presenterm.md") -- Don't format presenations
      end,
    },
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
  },
}
