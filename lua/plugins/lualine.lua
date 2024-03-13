return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options.globalstatus = false
    opts.options.component_separators = { left = "", right = "" }
    opts.options.section_separators = { left = "", right = "" }
    opts.sections.lualine_a = { {
      "mode",
      fmt = function(str)
        return str:sub(1, 3)
      end,
    } }
    -- Things after this are centered
    -- table.insert(opts.sections.lualine_c, "%=")
    table.insert(opts.sections.lualine_x, {
      -- Lsp server name
      function()
        local msg = ""
        local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
          return "No LSP"
        end
        for _, client in ipairs(clients) do
          local filetypes = client.config.filetypes
          if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
            msg = client.name .. " " .. msg
          end
        end
        return msg
      end,
      icon = " ",
      color = require("lazyvim.util.ui").fg("Character"),
    })
    opts.sections.lualine_y = { "fileformat", "progress" }
    opts.sections.lualine_z = { "location" }
  end,
}
