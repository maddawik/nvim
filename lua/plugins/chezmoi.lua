return {
  {
    -- highlighting for chezmoi files template files
    "alker0/chezmoi.vim",
    lazy = false,
    init = function()
      vim.g["chezmoi#use_tmp_buffer"] = 1
      vim.g["chezmoi#source_dir_path"] = os.getenv("HOME") .. "/.local/share/chezmoi"
    end,
  },
  {
    "xvzc/chezmoi.nvim",
    keys = {
      {
        "<leader>sz",
        function()
          require("telescope").extensions.chezmoi.find_files()
        end,
        desc = "Chezmoi",
      },
    },
    opts = {
      edit = {
        watch = false,
        force = false,
      },
      notification = {
        on_open = true,
        on_apply = true,
        on_watch = false,
      },
      telescope = {
        select = { "<CR>" },
      },
    },
    init = function()
      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = { os.getenv("HOME") .. "/.local/share/chezmoi/*" },
        callback = function(ev)
          local filename = vim.fn.expand("%:t")
          if string.sub(filename, 1, 4) ~= "run_" then
            local bufnr = ev.buf
            local edit_watch = function()
              require("chezmoi.commands.__edit").watch(bufnr)
            end
            vim.schedule(edit_watch)
            -- If this is a chezmoiscript, let's not apply it immediately. "Thar be dragons."
          else
            vim.notify("This file will be NOT be automatically applied 🔥🐲", vim.log.levels.WARN)
          end
        end,
      })
    end,
  },

  -- Filetype icons
  {
    "echasnovski/mini.icons",
    opts = {
      file = {
        [".chezmoiignore"] = { glyph = "", hl = "MiniIconsGrey" },
        [".chezmoiremove"] = { glyph = "", hl = "MiniIconsGrey" },
        [".chezmoiroot"] = { glyph = "", hl = "MiniIconsGrey" },
        [".chezmoiversion"] = { glyph = "", hl = "MiniIconsGrey" },
        ["bash.tmpl"] = { glyph = "", hl = "MiniIconsGrey" },
        ["fish.tmpl"] = { glyph = "󰈺", hl = "MiniIconsGrey" },
        ["json.tmpl"] = { glyph = "", hl = "MiniIconsGrey" },
        ["sh.tmpl"] = { glyph = "", hl = "MiniIconsGrey" },
        ["toml.tmpl"] = { glyph = "", hl = "MiniIconsGrey" },
        ["yaml.tmpl"] = { glyph = "", hl = "MiniIconsGrey" },
      },
    },
  },
}
