return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    automatic_installation = {},
    ensure_installed = {},
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
