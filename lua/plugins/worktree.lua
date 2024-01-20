return {
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
}
