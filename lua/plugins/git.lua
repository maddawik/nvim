return {
  -- Fugitive
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G", "GBrowse" },
    keys = {
      { "<leader>gf", "<Cmd>vertical G<CR>", desc = "Fugitive" },
      { "<leader>gp", "<Cmd>G pull<CR>", desc = "pull" },
      { "<leader>gP", "<Cmd>G push<CR>", desc = "push" },
    },
    dependencies = {
      "tpope/vim-rhubarb",
    },
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
