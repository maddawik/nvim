-- local copilot_icons = {
--   Error = { " ", "DiagnosticError" },
--   Inactive = { " ", "MsgArea" },
--   Warning = { " ", "DiagnosticWarn" },
--   Normal = { LazyVim.config.icons.kinds.Copilot, "Special" },
-- }

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    -- PERF: we don't need this lualine require madness 🤷
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    local icons = require("lazyvim.config").icons

    vim.o.laststatus = vim.g.lualine_laststatus

    return {
      options = {
        theme = "auto",
        globalstatus = true,
        disabled_filetypes = { statusline = { "snacks_dashboard" } },
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function()
              return "󰽯 "
            end,
          },
        },
        lualine_b = {
          {
            "branch",
            fmt = function(str)
              if str:len() > 6 then
                return str:sub(1, 6) .. "…"
              else
                return str
              end
            end,
          },
        },

        lualine_c = {
          LazyVim.lualine.root_dir(),

          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          "%=",
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { LazyVim.lualine.pretty_path() },
        },
        lualine_x = {
          -- stylua: ignore
          -- {
          --   function() return require("noice").api.status.command.get() end,
          --   cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
          --   color = { fg = Snacks.util.color("Statement") },
          -- },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get():gsub("recording", " ") end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = { fg = Snacks.util.color("Constant") },
          },
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function() return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = { fg = Snacks.util.color("Debug") },
          },
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
          },

          -- -- sidekick status
          -- {
          --   function()
          --     local status = require("sidekick.status").get()
          --     return status and vim.tbl_get(copilot_icons, status.kind, 1)
          --   end,
          --   color = function()
          --     local status = require("sidekick.status").get()
          --     local hl = status and (status.busy and "DiagnosticWarn" or vim.tbl_get(copilot_icons, status.kind, 2))
          --     return { fg = Snacks.util.color(hl) }
          --   end,
          --   cond = function()
          --     local status = require("sidekick.status") --ok test
          --     return status.get() ~= nil
          --   end,
          -- },

          { "filesize", padding = { left = 0, right = 1 } },
        },
        lualine_y = {
          { "fileformat", padding = { left = 1, right = 2 } },
          { "encoding", padding = { left = 0, right = 1 } },
        },
        lualine_z = { "location" },
      },
      extensions = { "lazy" },
    }
  end,
}
