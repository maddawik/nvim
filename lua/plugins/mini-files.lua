return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.files",
    lazy = false,

    opts = function(_, opts)
      opts.mappings = {
        synchronize = "<CR>",
      }
      opts.options = {
        use_as_default_explorer = true,
      }
      local files_grug_far_replace = function()
        local MiniFiles = require("mini.files")
        -- works only if cursor is on the valid file system entry
        local grug_path = (MiniFiles.get_fs_entry() or {}).path
        if grug_path == nil then
          return vim.notify("Cursor is not on valid entry", vim.log.levels.WARN)
        end
        local prefills = { paths = vim.fs.dirname(grug_path) }

        local grug_far = require("grug-far")

        -- instance check
        if not grug_far.has_instance("explorer") then
          grug_far.open({
            instanceName = "explorer",
            prefills = prefills,
            staticTitle = "Find and Replace from Explorer",
          })
        else
          grug_far.get_instance("explorer"):open()
          -- updating the prefills without crealing the search and other fields
          grug_far.get_instance("explorer"):update_input_values(prefills, false)
        end
      end

      -- Yank in register full path of entry under cursor
      local yank_path = function()
        local yank_path = (require("mini.files").get_fs_entry() or {}).path
        if yank_path == nil then
          return vim.notify("Cursor is not on valid entry", vim.log.levels.WARN)
        end
        vim.fn.setreg(vim.v.register, yank_path)
        vim.notify("Copied path to clipboard", vim.log.levels.INFO)
      end

      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniFilesBufferCreate",
        callback = function(args)
          vim.keymap.set("n", "gy", yank_path, { buffer = args.data.buf_id, desc = "Yank path" })
          vim.keymap.set("n", "gs", files_grug_far_replace, { buffer = args.data.buf_id, desc = "Search in directory" })
        end,
      })

      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniFilesActionRename",
        callback = function(event)
          Snacks.rename.on_rename_file(event.data.from, event.data.to)
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
            if not MiniFiles.close() then
              MiniFiles.open(vim.api.nvim_buf_get_name(0), true)
            end
          end,
          desc = "Open files (directory of current buffer)",
        },
        {
          "<leader>e",
          function()
            if not MiniFiles.close() then
              MiniFiles.open(LazyVim.root.get(), true)
            end
          end,
          desc = "Open files (root dir)",
        },
        {
          "<leader>E",
          function()
            if not MiniFiles.close() then
              MiniFiles.open(nil, false)
            end
          end,
          desc = "Open files (cwd)",
        },
      }
    end,
  },
}
