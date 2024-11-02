-- TODO: Add the extra to lua/config/lazy.lua once released
return {
  "saghen/blink.cmp",
  optional = true,

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    highlight = {
      use_nvim_cmp_as_default = true,
    },
    keymap = {
      preset = "default",
    },
  },
}
