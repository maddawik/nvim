return {
  "b0o/incline.nvim",
  config = function()
    local helpers = require("incline.helpers")
    local devicons = require("nvim-web-devicons")
    require("incline").setup({
      window = {
        padding = 0,
        margin = { horizontal = 0 },
      },
      render = function(props)
        local lazy_icons = require("lazyvim.config").icons

        local function get_filename()
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if filename == "" then
            filename = "[No Name]"
          end
          local ft_icon, ft_color = devicons.get_icon_color(filename)
          local modified = vim.bo[props.buf].modified
          return {
            " ",
            { filename, gui = modified and "bold,italic" or "bold" },
            " ",
            ft_icon and { ft_icon, " ", guibg = "none", guifg = ft_color } or "",
          }
        end

        local function get_diagnostics()
          local icons = {
            error = lazy_icons.diagnostics.Error,
            warn = lazy_icons.diagnostics.Warn,
            info = lazy_icons.diagnostics.Info,
            hint = lazy_icons.diagnostics.Hint,
          }
          local labels = {}

          for severity, icon in pairs(icons) do
            local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
            if n > 0 then
              table.insert(labels, { " " .. icon .. n, group = "DiagnosticSign" .. severity })
            end
          end
          if #labels > 0 then
            table.insert(labels, { " ┊" })
          end
          return labels
        end

        local function get_git_diff()
          local icons = {
            add = lazy_icons.git.added,
            change = lazy_icons.git.modified,
            delete = lazy_icons.git.removed,
          }
          local signs = vim.b[props.buf].minidiff_summary

          local labels = {}
          if signs == nil then
            return labels
          end
          for name, icon in pairs(icons) do
            if tonumber(signs[name]) and signs[name] > 0 then
              table.insert(labels, { " ", icon .. signs[name], group = "MiniDiffSign" .. name })
            end
          end
          if #labels > 0 then
            table.insert(labels, { " 󰊢 " .. signs.n_ranges })
            table.insert(labels, { " ┊" })
          end
          return labels
        end

        local function get_harpoon_status()
          local harpoon = require("harpoon")
          local marks = harpoon:list().items
          local current_file_path = vim.fn.expand("#" .. props.buf .. ":p:.")
          local labels = {}

          for id, item in ipairs(marks) do
            if item.value == current_file_path then
              table.insert(labels, { id, group = "Number" })
              break
            end
          end

          if #labels > 0 then
            table.insert(labels, 1, { " 󰛢 ", group = "Function" })
          end
          return labels
        end
        return {
          { get_diagnostics() },
          { get_git_diff() },
          { get_harpoon_status() },
          { get_filename() },
          group = props.focused and "ColorColumn" or "FoldColumn",
        }
      end,
    })
  end,
  event = "VeryLazy",
}
