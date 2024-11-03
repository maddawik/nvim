return {
  "saghen/blink.cmp",
  optional = true,

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    windows = {
      documentation = {
        border = "rounded",
      },
    },

    highlight = {
      use_nvim_cmp_as_default = true,
    },
    keymap = {
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide" },
      ["<C-y>"] = { "select_and_accept" },

      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },

      ["<C-j>"] = { "snippet_forward", "fallback" },
      ["<C-k>"] = { "snippet_backward", "fallback" },
    },
  },
}
