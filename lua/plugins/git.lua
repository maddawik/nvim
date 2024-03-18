return {
  -- Fugitive
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim", -- Diff integration
      "nvim-telescope/telescope.nvim",
    },
    cmd = { "Neogit" },
    keys = {
      {
        "<leader>gs",
        function()
          require("neogit").open({ kind = "auto" })
        end,
        desc = "Neogit (cwd)",
      },
      {
        "<leader>gS",
        function()
          require("neogit").open({ cwd = require("lazyvim.util.root").get(), kind = "auto" })
        end,
        desc = "Neogit (root dir)",
      },
    },
    config = true,
  },
  -- Worktrees
  {
    "ThePrimeagen/git-worktree.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("git_worktree")
    end,
    keys = {
      {
        "<leader>gt",
        function()
          require("telescope").extensions.git_worktree.git_worktrees()
        end,
        desc = "Search Worktrees",
      },
      {
        "<leader>gT",
        function()
          require("telescope").extensions.git_worktree.create_git_worktree()
        end,
        desc = "Create Worktree",
      },
    },
  },
  -- Visuals
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
  -- Diff
  {
    "sindrets/diffview.nvim",
    config = true,
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "diff" },
    },
  },
  -- GitHub PR's
  {
    "pwntester/octo.nvim",
    config = true,
    cmd = "Octo",
  },
}
