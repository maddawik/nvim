local augroup = vim.api.nvim_create_augroup("user.neogit", {})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  desc = "Disable colorcolumn for NeogitStatus",
  pattern = { "NeogitStatus" },
  command = "silent! set colorcolumn=0",
})

return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  cmd = { "Neogit" },
  keys = {
    {
      "<leader>gn",
      function()
        require("neogit").open({ cwd = LazyVim.root.git(), kind = "auto" })
      end,
      desc = "Neogit (cwd)",
    },
    {
      "<leader>gN",
      function()
        require("neogit").open({ kind = "auto" })
      end,
      desc = "Neogit (root dir)",
    },
  },
  opts = {
    disable_builtin_notifications = true,
    integrations = {
      fzf_lua = true,
    },
  },
}
