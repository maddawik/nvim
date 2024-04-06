return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>p"] = { name = "+print", mode = "v" },
      },
    },
  },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    cmd = {
      "CodeSnapSave",
      "CodeSnap",
    },
    opts = {
      mac_window_bar = true,
      title = "",
      code_font_family = "JetBrains Mono",
      watermark = "",
      bg_theme = "bamboo",
      breadcrumbs_separator = "/",
      has_breadcrumbs = true,
      save_path = "~/codesnap",
    },
    keys = {
      {
        "<leader>ps",
        ":CodeSnap<CR>",
        desc = "CodeSnap (clipboard)",
        mode = "x",
        silent = true,
      },
      {
        "<leader>pS",
        ":CodeSnapSave<CR>",
        desc = "CodeSnap (~/codesnap)",
        mode = "x",
        silent = true,
      },
    },
  },
}
