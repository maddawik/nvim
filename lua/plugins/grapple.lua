local function grapple_tag()
  local input = vim.fn.input("Enter tag name: ")
  if input ~= "" then
    require("grapple").tag({ name = input })
  end
end

return {
  {
    "folke/which-key.nvim",
    opts = {
      icons = {
        rules = {
          { plugin = "grapple.nvim", icon = "󰛢", color = "blue" },
        },
      },
    },
  },
  {
    "cbochs/grapple.nvim",
    opts = {
      scope = "git", -- also try out "git_branch"
      icons = true, -- setting to "true" requires "nvim-web-devicons"
      status = false,
      win_opts = {
        border = "rounded",
      },
    },
    keys = {
      { "<leader>H", "<cmd>Grapple toggle<cr>", desc = "Tag a file" },
      { "<leader>h", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },
      { "<M-h>", grapple_tag, desc = "Tag a file w/ name" },

      { "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
      { "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
      { "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
      { "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
      { "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "Select fifth tag" },
    },
  },
}
