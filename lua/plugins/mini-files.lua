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
          grug_far.open_instance("explorer")
          -- updating the prefills without crealing the search and other fields
          grug_far.update_instance_prefills("explorer", prefills, false)
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

      local function grapple_nametag()
        local grapple_path = (require("mini.files").get_fs_entry() or {}).path
        if grapple_path == nil then
          return vim.notify("Cursor is not on valid entry", vim.log.levels.WARN)
        end
        local input = vim.fn.input("Enter tag name: ")
        if input ~= "" then
          require("grapple").tag({ name = input, path = grapple_path })
        end
        require("mini.files").synchronize()
      end

      local grapple_tag = function()
        local grapple_path = (require("mini.files").get_fs_entry() or {}).path
        if grapple_path == nil then
          return vim.notify("Cursor is not on valid entry", vim.log.levels.WARN)
        end
        require("grapple").toggle({ path = grapple_path })
        require("mini.files").synchronize()
      end

      local open_file_explorer = function()
        local MiniFiles = require("mini.files")
        -- works only if cursor is on the valid file system entry
        local file_path = (MiniFiles.get_fs_entry() or {}).path
        if file_path == nil then
          return vim.notify("Cursor is not on valid entry", vim.log.levels.WARN)
        end
        local cmd = "open " .. vim.fs.dirname(file_path)

        vim.fn.jobstart(cmd, {
          on_exit = function(_, exit_code)
            if exit_code ~= 0 then
              vim.notify("No bueno " .. exit_code .. ": " .. cmd)
            end
          end,
        })
      end

      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniFilesBufferCreate",
        callback = function(args)
          vim.keymap.set("n", "gy", yank_path, { buffer = args.data.buf_id, desc = "Yank path" })
          vim.keymap.set("n", "gs", files_grug_far_replace, { buffer = args.data.buf_id, desc = "Search in directory" })
          vim.keymap.set("n", "gh", grapple_tag, { buffer = args.data.buf_id, desc = "Tag file" })
          vim.keymap.set("n", "gH", grapple_nametag, { buffer = args.data.buf_id, desc = "Tag file w/ name" })
          vim.keymap.set("n", "go", open_file_explorer, { buffer = args.data.buf_id, desc = "Open in File Explorer" })
        end,
      })

      local my_prefix = function(fs_entry)
        if require("grapple").exists({ path = fs_entry.path }) then
          return "󰛢 ", "Constant"
        end
        return MiniFiles.default_prefix(fs_entry)
      end

      opts.content = { prefix = my_prefix }
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
