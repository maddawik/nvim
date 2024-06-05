vim.opt.colorcolumn = "120"
vim.opt.pumblend = 0
vim.opt.listchars = {
  -- space = ".",
  eol = "↲",
  --   nbsp = "␣",
  --   trail = "·",
  --   precedes = "←",
  --   extends = "→",
  tab = "¬ ",
  --   conceal = "※",
}

vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0

LazyVim.lsp.on_attach(function()
  vim.opt.signcolumn = "yes"
end)
