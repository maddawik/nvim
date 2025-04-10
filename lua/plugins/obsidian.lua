local personal_vault = vim.fn.expand("~") .. "/vaults/personal"
local work_vault = vim.fn.expand("~") .. "/vaults/work"

local function get_local_workspaces()
  local check_path = work_vault .. "/.git"
  local is_work = vim.fn.isdirectory(check_path)

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
    ---@module 'which-key'
    ---@type wk.Opts
    opts = {
      spec = {
        { "<leader>o", group = "notes", icon = " ", mode = { "v", "n" } },
      },
    },
  },
  {
    "obsidian-nvim/obsidian.nvim",
    dependencies = {
      "saghen/blink.compat", -- blink support
      "nvim-lua/plenary.nvim",
    },
    version = "*",
    event = {
      "BufReadPre " .. personal_vault .. "/**.md",
      "BufReadPre " .. work_vault .. "/**.md",
      "BufNewFile " .. personal_vault .. "/**.md",
      "BufNewFile " .. work_vault .. "/**.md",
    },
    cmd = {
      "ObsidianDailies",
    },
    opts = {
      picker = {
        name = "snacks.pick",
      },
      ui = {
        enable = false,
        checkboxes = {
          [" "] = { char = "☐", hl_group = "DiagnosticSignHint" },
          ["x"] = { char = "✔", hl_group = "DiagnosticSignOk" },
        },
      },
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
        template = "daily.md",
      },
      workspaces = get_local_workspaces(),
      disable_frontmatter = function(file)
        return string.find(file, "-presenterm.md") -- Don't format presenations
      end,
      completion = {
        nvim_cmp = false,
        blink = true,
      },
    },
    keys = {
      { "<leader>ob", "<cmd>ObsidianBacklinks<CR>", desc = "Backlinks" },
      { "<leader>oe", "<cmd>ObsidianExtractNote<CR>", desc = "Extract Note", mode = "v" },
      { "<leader>oh", "<cmd>ObsidianCheck<CR>", desc = "Check Health" },
      { "<leader>oH", "<cmd>ObsidianDebug<CR>", desc = "Debug Info" },
      { "<leader>ol", "<cmd>ObsidianLinks<CR>", desc = "List Links" },
      { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "New Link", mode = "v" },
      { "<leader>oL", "<cmd>ObsidianLinkNew<CR>", desc = "New Link & File", mode = "v" },
      { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "New Note" },
      { "<leader>oN", "<cmd>ObsidianNewFromTemplate<CR>", desc = "New Templated Note" },
      { "<leader>oo", "<cmd>ObsidianOpen<CR>", desc = "Open Obsidian" },
      { "<leader>op", "<cmd>ObsidianPasteImg<CR>", desc = "Paste Image" },
      { "<leader>or", "<cmd>ObsidianRename<CR>", desc = "Rename Note" },
      { "<leader>og", "<cmd>ObsidianSearch<CR>", desc = "Grep" },
      { "<leader>ot", "<cmd>ObsidianTags<CR>", desc = "Search Tags" },
      { "<leader>od", "<cmd>ObsidianDailies<CR>", desc = "Open Dailies" },
      { "<leader>ow", "<cmd>ObsidianWorkspace<CR>", desc = "Change Workspace" },
      { "<leader>o<space>", "<cmd>ObsidianQuickSwitch<CR>", desc = "Find Note" },
    },
  },
}
