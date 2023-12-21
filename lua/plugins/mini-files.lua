local minifiles_toggle = function(...)
  if not MiniFiles.close() then
    MiniFiles.open(...)
  end
end

local filter_show = function()
  return true
end
local filter_hide = function(fs_entry)
  return not vim.startswith(fs_entry.name, ".")
end

return {
  "echasnovski/mini.files",
  opts = {
    content = {
      filter = filter_hide,
    },
    windows = {
      preview = true,
      width_focus = 30,
      width_preview = 30,
    },
    mappings = {
      synchronize = "<CR>",
    },
    options = {
      use_as_default_explorer = true,
    },
  },
  config = function(_, opts)
    require("mini.files").setup(opts)

    local show_dotfiles = function()
      require("mini.files").refresh({ content = { filter = filter_show } })
    end

    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesBufferCreate",
      callback = function(args)
        local buf_id = args.data.buf_id
        vim.keymap.set("n", "g.", show_dotfiles, { buffer = buf_id })
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesActionRename",
      callback = function(event)
        require("lazyvim.util").lsp.on_rename(event.data.from, event.data.to)
      end,
    })
  end,
  -- Passing a function that returns the table of keymaps overrides any of the
  -- defaults that LazyVim has (<leader>fm, and <leader>fM in this case)
  keys = function()
    return {
      {
        "\\",
        function()
          minifiles_toggle(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open files (directory of current file)",
      },
      {
        "<leader>e",
        function()
          minifiles_toggle(require("lazyvim.util.root").get(), true)
        end,
        desc = "Open files (cwd)",
      },
      {
        "<leader>E",
        function()
          minifiles_toggle(nil, false)
        end,
        desc = "Open files (root dir)",
      },
    }
  end,
}
