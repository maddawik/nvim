return {
  {
    "stevearc/overseer.nvim",
    keys = function()
      return {
        { "<leader>oa", "<cmd>OverseerTaskAction<cr>", desc = "Task Action" },
        { "<leader>oc", "<cmd>OverseerClearCache<cr>", desc = "Clear cache" },
        { "<leader>oi", "<cmd>OverseerInfo<cr>", desc = "Overseer Info" },
        { "<leader>on", "<cmd>OverseerBuild<cr>", desc = "New Task" },
        { "<leader>oo", "<cmd>OverseerToggle<cr>", desc = "Task List" },
        { "<leader>oq", "<cmd>OverseerQuickAction<cr>", desc = "Quick Action" },
        { "<leader>or", "<cmd>OverseerRun<cr>", desc = "Run Task" },
      }
    end,
  },
}
