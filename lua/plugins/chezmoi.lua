vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { vim.fn.expand("~") .. "/.dotfiles/*" },
  callback = function()
    vim.schedule(require("chezmoi.commands.__edit").watch)
  end,
})

return {
  "xvzc/chezmoi.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("chezmoi").setup({})
    require("telescope").load_extension("chezmoi")
  end,
  keys = {
    {
      "<leader>fC",
      function()
        require("telescope").extensions.chezmoi.find_files()
      end,
      desc = "Find Chezmoi File",
    },
  },
}
