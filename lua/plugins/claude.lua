---@diagnostic disable: missing-fields
return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  ---@module 'claudecode.nvim'
  ---@type ClaudeCodeConfig
  opts = {
    diff_opts = {
      open_in_new_tab = true,
    },
    terminal = {
      split_width_percentage = 0.40,
    },
  },
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
    { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    {
      "<leader>as",
      "<cmd>ClaudeCodeTreeAdd<cr>",
      desc = "Add file",
      ft = "minifiles",
    },
    -- Diff management
    { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },

  specs = {
    {
      "folke/which-key.nvim",
      ---@module 'which-key'
      ---@type wk.Opts
      opts = {
        spec = {
          { "<leader>a", group = "ai", icon = " ", mode = { "v", "n" } },
        },
      },
    },
  },
}
