return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    signature = {
      enabled = true,
    },
    completion = {
      documentation = {
        window = {
          border = "rounded",
        },
        auto_show = true,
        auto_show_delay_ms = 200,
      },
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

      ["<C-j>"] = {
        "snippet_forward",
        function() -- sidekick next edit suggestion
          return require("sidekick").nes_jump_or_apply()
        end,
        "fallback",
      },
      ["<C-k>"] = { "snippet_backward", "fallback" },
    },
  },
}
