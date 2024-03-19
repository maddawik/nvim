return {
  {
    "mtoohey31/cmp-fish",
    ft = "fish",
  },
  { "andersevenrud/cmp-tmux", event = "BufReadPre" },
  {
    "petertriho/cmp-git",
    ft = { "gitcommit", "octo", "NeogitCommitMessage" },
    opts = {
      filetypes = { "gitcommit", "octo", "NeogitCommitMessage" },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {},
    opts = function(_, opts)
      local cmp = require("cmp")

      cmp.setup({
        window = {
          -- completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "fish" },
        { name = "tmux" },
        { name = "git" },
      }))
    end,
  },
}
