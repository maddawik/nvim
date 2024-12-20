return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        hcl = { "terragrunt_hclfmt" },
      },
    },
  },
  {
    "ANGkeith/telescope-terraform-doc.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    enabled = function()
      return LazyVim.has("telescope.nvim")
    end,
    optional = true, -- only apply this if the terraform extra is enabled
    keys = {
      {
        "<leader>sp",
        "<cmd>Telescope terraform_doc<cr>",
        desc = "Terraform Providers",
        ft = { "terraform", "hcl" },
      },
    },
  },
}
