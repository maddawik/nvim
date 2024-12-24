return {
  "saghen/blink.cmp",
  dependencies = {
    "mtoohey31/cmp-fish",
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    sources = {
      default = { "fish" },
      providers = {
        fish = {
          name = "fish",
          module = "blink.compat.source",
        },
      },
    },
    completion = {
      documentation = {
        window = {
          border = "rounded",
        },
      },
    },
    signature = {
      enabled = true,
    },
    keymap = {
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
    },
  },
}
