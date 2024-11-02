return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      -- Override the default nvim-cmp mappings from LazyVim
      opts.mapping = {
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),

        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),

        ["<C-y>"] = cmp.mapping.confirm({ select = true }),

        ["<C-Space>"] = cmp.mapping.complete({}),
      }
      cmp.setup({
        window = {
          -- completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "fish" },
        { name = "tmux" },
      }))
    end,
  },
  {
    "mtoohey31/cmp-fish",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    ft = "fish",
  },
  {
    "andersevenrud/cmp-tmux",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    event = {
      "BufReadPre",
      "BufNewFile",
    },
  },
  {
    "hrsh7th/cmp-cmdline",
    dependencies = { "hrsh7th/nvim-cmp", "hrsh7th/cmp-buffer" },
    event = "CmdlineEnter",
    config = function()
      local cmp = require("cmp")
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },
}
