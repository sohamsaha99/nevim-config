return {
  { 'catppuccin/nvim', priority = 1000 },
  -- { 'vim-airline/vim-airline' },
  -- {
  --   'nvim-lualine/lualine.nvim',
  --   dependencies = { 'echasnovski/mini.nvim' }
  -- },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  }
}
