return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod" },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" } },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    require("which-key").register({ D = { name = "+database" } }, { prefix = "<leader>", mode = "n" })

    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_use_nvim_notify = 1

    -- Update keymaps for dadbod-ui
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "dbui",
      callback = function()
        vim.keymap.set("n", "<tab>", "<Plug>(DBUI_SelectLine)", { buffer = true })
      end,
    })

    -- Load completion
    vim.api.nvim_create_autocmd("FileType", {
      desc = "Load completion for db query files",
      pattern = { "sql", "mysql", "plsql" },
      callback = function()
        require("cmp").setup.buffer({
          sources = {
            { name = "vim-dadbod-completion" },
            { name = "buffer" },
            { name = "luasnip" },
          },
        })
      end,
      group = vim.api.nvim_create_augroup("lazyvim_config_dadbod", { clear = true }),
    })
  end,
  keys = {
    { "<leader>Du", "<cmd>DBUIToggle<CR>", desc = "UI Toggle" },
    { "<leader>Da", "<cmd>DBUIAddConnection<CR>", desc = "Add Connection" },
    { "<leader>Df", "<cmd>DBUIFindBuffer<CR>", desc = "Find Buffer" },
  },
}
