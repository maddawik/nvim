local augroup = vim.api.nvim_create_augroup("user.neogit", {})

-- Neogit uses the filetype `NeogitCommitMessage` for the commit message buffer.
-- this causes some problems and has no real benefit, so we switch it back to
-- `gitcommit`.
-- https://github.com/NeogitOrg/neogit/issues/405#issuecomment-1374652332
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  desc = "Use gitcommit over NeogitCommitMessage filetype",
  pattern = "NeogitCommitMessage",
  command = "silent! set filetype=gitcommit buflisted",
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  desc = "Disable colorcolumn for NeogitStatus",
  pattern = { "NeogitStatus" },
  command = "silent! set colorcolumn=0",
})

return {
  "NeogitOrg/neogit",
  branch = "nightly",
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
        require("neogit").open({ cwd = require("lazyvim.util.root").get(), kind = "auto" })
      end,
      desc = "Neogit (cwd)",
    },
    {
      "<leader>gS",
      function()
        require("neogit").open({ kind = "auto" })
      end,
      desc = "Neogit (root dir)",
    },
  },
  opts = {
    disable_builtin_notifications = true,
  },
}
