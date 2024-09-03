vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("user.neogit", {}),
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
        -- Workaround for https://github.com/NeogitOrg/neogit/issues/1392
        local root = LazyVim.root.get()
        local current_dir = vim.fn.getcwd()
        if current_dir ~= root then
          vim.fn.chdir(root)
        end
        require("neogit").open({ kind = "auto" })
      end,
      desc = "Neogit (root dir)",
    },
    {
      "<leader>gN",
      function()
        require("neogit").open({ kind = "auto" })
      end,
      desc = "Neogit (cwd)",
    },
  },
  opts = {
    disable_builtin_notifications = true,
    integrations = {
      fzf_lua = true,
    },
  },
}
