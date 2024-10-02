local function get_random_theme()
  math.randomseed(os.time())
  local themes = {
    "bamboo",
    "sea",
    "peach",
    "grape",
    "dusk",
    "summer",
  }
  return themes[math.random(1, #themes)]
end

return {
  {
    "mistricky/codesnap.nvim",
    build = "make",
    cmd = {
      "CodeSnap",
      "CodeSnapHighlight",
      "CodeSnapSave",
      "CodeSnapSaveHighlight",
      "CodeSnapASCII",
    },
    opts = {
      mac_window_bar = true,
      title = "",
      code_font_family = "JetBrains Mono",
      watermark = "EJ Reilly",
      bg_theme = get_random_theme(),
      breadcrumbs_separator = "/",
      has_breadcrumbs = false,
      has_line_number = true,
      save_path = "~/codesnap",
    },
    keys = {
      {
        "<leader>us",
        ":CodeSnap<CR>",
        desc = "CodeSnap (clipboard)",
        mode = "x",
        silent = true,
      },
      {
        "<leader>uS",
        ":CodeSnapSave<CR>",
        desc = "CodeSnap (~/codesnap)",
        mode = "x",
        silent = true,
      },
      {
        "<leader>up",
        ":CodeSnapHighlight<CR>",
        desc = "CodeSnap Highlight (clipboard)",
        mode = "x",
        silent = true,
      },
      {
        "<leader>uP",
        ":CodeSnapSaveHighlight<CR>",
        desc = "CodeSnap Highlight (~/codesnap)",
        mode = "x",
        silent = true,
      },
      {
        "<leader>ua",
        ":CodeSnapASCII<CR>",
        desc = "CodeSnap ASCII",
        mode = "x",
        silent = true,
      },
    },
  },
}
