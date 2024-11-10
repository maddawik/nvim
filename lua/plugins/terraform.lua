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
    optional = true, -- only apply this if the terraform extra is enabled
    keys = {
      {
        "<leader>sp",
        "<cmd>Telescope terraform_doc<cr>",
        desc = "Terraform Providers",
        ft = { "tf", "hcl" },
      },
    },
  },
}
