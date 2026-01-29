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
      "Obsidian",
    },
    opts = {
      checkbox = {
        order = { " ", "x" },
      },
      picker = {
        name = "snacks.pick",
      },
      ui = {
        enable = false,
      },
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
      frontmatter = {
        enabled = function(file)
          return string.find(file, "-presenterm.md") -- Don't format presenations
        end,
      },
      completion = {
        nvim_cmp = false,
        blink = true,
      },
      legacy_commands = false,
    },
    keys = {
      { "<leader>ob", "<cmd>Obsidian backlinks<CR>", desc = "Backlinks" },
      { "<leader>oe", "<cmd>Obsidian extract_note<CR>", desc = "Extract Note", mode = "v" },
      { "<leader>oh", "<cmd>Obsidian check<CR>", desc = "Check Health" },
      { "<leader>oH", "<cmd>Obsidian debug<CR>", desc = "Debug Info" },
      { "<leader>ol", "<cmd>Obsidian links<CR>", desc = "List Links" },
      { "<leader>ol", "<cmd>Obsidian link<CR>", desc = "New Link", mode = "v" },
      { "<leader>oL", "<cmd>Obsidian link_new<CR>", desc = "New Link & File", mode = "v" },
      { "<leader>on", "<cmd>Obsidian new<CR>", desc = "New Note" },
      { "<leader>oN", "<cmd>Obsidian new_from_template<CR>", desc = "New Templated Note" },
      { "<leader>oo", "<cmd>Obsidian open<CR>", desc = "Open Obsidian" },
      { "<leader>op", "<cmd>Obsidian paste_img<CR>", desc = "Paste Image" },
      { "<leader>or", "<cmd>Obsidian rename<CR>", desc = "Rename Note" },
      { "<leader>og", "<cmd>Obsidian search<CR>", desc = "Grep" },
      { "<leader>ot", "<cmd>Obsidian tags<CR>", desc = "Search Tags" },
      { "<leader>od", "<cmd>Obsidian dailies<CR>", desc = "Open Dailies" },
      { "<leader>ow", "<cmd>Obsidian workspace<CR>", desc = "Change Workspace" },
      { "<leader>o<space>", "<cmd>Obsidian quick_switch<CR>", desc = "Find Note" },
    },
  },
}
