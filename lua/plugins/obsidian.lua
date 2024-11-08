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
        { "<leader>n", group = "notes", icon = " ", mode = { "v", "n" } },
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
      "ObsidianDailies",
    },
    opts = {
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
      },
      workspaces = get_local_workspaces(),
      disable_frontmatter = function(file)
        return string.find(file, "-presenterm.md") -- Don't format presenations
      end,
    },
    keys = {
      { "<leader>nb", "<cmd>ObsidianBacklinks<CR>", desc = "Backlinks" },
      { "<leader>ne", "<cmd>ObsidianExtractNote<CR>", desc = "Extract Note", mode = "v" },
      { "<leader>nh", "<cmd>ObsidianCheck<CR>", desc = "Check Health" },
      { "<leader>nH", "<cmd>ObsidianDebug<CR>", desc = "Debug Info" },
      { "<leader>nl", "<cmd>ObsidianLinks<CR>", desc = "List Links" },
      { "<leader>nl", "<cmd>ObsidianLink<CR>", desc = "New Link", mode = "v" },
      { "<leader>nL", "<cmd>ObsidianLinkNew<CR>", desc = "New Link & File", mode = "v" },
      { "<leader>nn", "<cmd>ObsidianNew<CR>", desc = "New Note" },
      { "<leader>nN", "<cmd>ObsidianNewFromTemplate<CR>", desc = "New Templated Note" },
      { "<leader>no", "<cmd>ObsidianOpen<CR>", desc = "Open Obsidian" },
      { "<leader>np", "<cmd>ObsidianPasteImg<CR>", desc = "Paste Image" },
      { "<leader>nr", "<cmd>ObsidianRename<CR>", desc = "Rename Note" },
      { "<leader>ng", "<cmd>ObsidianSearch<CR>", desc = "Grep" },
      { "<leader>nt", "<cmd>ObsidianTags<CR>", desc = "Search Tags" },
      { "<leader>nd", "<cmd>ObsidianDailies<CR>", desc = "Open Dailies" },
      { "<leader>nw", "<cmd>ObsidianWorkspace<CR>", desc = "Change Workspace" },
      { "<leader>n<space>", "<cmd>ObsidianQuickSwitch<CR>", desc = "Find Note" },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    optional = true,
    opts = function(_, opts)
      local obsidian = {
        desc = "dailies",
        icon = " ",
        icon_hl = "@text",
        group = "@conditional",
        action = "ObsidianDailies",
        key = "d",
      }
      table.insert(opts.config.shortcut, 1, obsidian)
    end,
  },
}
