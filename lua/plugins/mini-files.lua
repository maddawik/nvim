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
      local files_grug_far_replace = function(path)
        local MiniFiles = require("mini.files")
        -- works only if cursor is on the valid file system entry
        local cur_entry_path = MiniFiles.get_fs_entry().path
        local prefills = { paths = vim.fs.dirname(cur_entry_path) }

        local grug_far = require("grug-far")

        -- instance check
        if not grug_far.has_instance("explorer") then
          grug_far.open({
            instanceName = "explorer",
            prefills = prefills,
            staticTitle = "Find and Replace from Explorer",
          })
        else
          grug_far.open_instance("explorer")
          -- updating the prefills without crealing the search and other fields
          grug_far.update_instance_prefills("explorer", prefills, false)
        end
      end

      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniFilesBufferCreate",
        callback = function(args)
          vim.keymap.set("n", "gs", files_grug_far_replace, { buffer = args.data.buf_id, desc = "Search in directory" })
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
            MiniFiles.open(vim.api.nvim_buf_get_name(0), true)
          end,
          desc = "Open files (directory of current buffer)",
        },
        {
          "<leader>e",
          function()
            MiniFiles.open(LazyVim.root.get(), true)
          end,
          desc = "Open files (root dir)",
        },
        {
          "<leader>E",
          function()
            MiniFiles.open(nil, false)
          end,
          desc = "Open files (cwd)",
        },
      }
    end,
  },
}
