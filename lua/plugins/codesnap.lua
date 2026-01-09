return {
  {
    "mistricky/codesnap.nvim",
    cmd = {
      "CodeSnap",
      "CodeSnapHighlight",
      "CodeSnapSave",
      "CodeSnapSaveHighlight",
      "CodeSnapASCII",
    },
    opts = {
      snapshot_config = {
        watermark = {
          content = "",
        },
      },
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
