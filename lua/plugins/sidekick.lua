return {
  "folke/sidekick.nvim",
  ---@module 'sidekick'
  ---@class sidekick.Config
  opts = {},
  keys = function()
    return {
      -- nes is also useful in normal mode
      { "<tab>", LazyVim.cmp.map({ "ai_nes" }, "<tab>"), mode = { "n" }, expr = true },
      { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
      {
        "<leader>ai",
        function()
          require("sidekick.cli").toggle({ name = "claude", focus = true })
        end,
        desc = "Sidekick Toggle Claude",
      },
      {
        "<leader>ad",
        function()
          require("sidekick.cli").send({ msg = "{diagnostics}" })
        end,
        desc = "Send Buffer Diagnostics",
      },
      {
        "<leader>aD",
        function()
          require("sidekick.cli").send({ msg = "{diagnostics_all}" })
        end,
        desc = "Send Workspace Diagnostics",
      },
      {
        "<leader>af",
        function()
          require("sidekick.cli").send({ msg = "{function}" })
        end,
        desc = "Send Function",
      },
      {
        "<leader>as",
        function()
          require("sidekick.cli").send({ msg = "{position}" })
        end,
        mode = { "x", "n" },
        desc = "Send Position",
      },
      {
        "<leader>ab",
        function()
          require("sidekick.cli").send({ msg = "{file}" })
        end,
        desc = "Send Buffer",
      },
      {
        "<leader>ap",
        function()
          require("sidekick.cli").prompt()
        end,
        mode = { "n", "x" },
        desc = "Sidekick Select Prompt",
      },
      {
        "<leader>ac",
        function()
          require("sidekick.nes").clear()
        end,
        mode = { "n", "x" },
        desc = "Sidekick Clear NES",
      },
      {
        "<leader>at",
        function()
          require("sidekick.nes").toggle()
        end,
        mode = { "n", "x" },
        desc = "Sidekick Toggle NES",
      },
    }
  end,
}
