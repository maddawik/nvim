return {
  {
    "maddawik/cmp-fish",
    ft = { "fish", "fish.chezmoitmpl" },
  },
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts.cmdline = {
        enabled = true,
      }
      opts.sources = {
        compat = {},
        default = { "lsp", "fish", "path", "snippets", "buffer" },
        providers = {
          fish = {
            name = "fish",
            module = "blink.compat.source",
          },
        },
      }
      opts.signature = {
        enabled = true,
      }
      opts.completion.documentation = {
        window = {
          border = "rounded",
        },
        auto_show = true,
        auto_show_delay_ms = 200,
      }
      opts.keymap = {
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide" },
        ["<C-y>"] = { "select_and_accept" },
        ["<CR>"] = { "fallback" },

        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },

        ["<C-b>"] = { "scroll_documentation_up", "fallback" },
        ["<C-f>"] = { "scroll_documentation_down", "fallback" },

        ["<C-j>"] = { "snippet_forward", "fallback" },
        ["<C-k>"] = { "snippet_backward", "fallback" },
      }
    end,
  },
}
