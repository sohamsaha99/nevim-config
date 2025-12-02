return {
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
    end
  },
  {
    'nvim-mini/mini.nvim',
    version = false,
    config = function()
      require('mini.align').setup()
    end
  },
  -- { 'vim-airline/vim-airline' },
  -- {
  --   'nvim-lualine/lualine.nvim',
  --   dependencies = { 'nvim-mini/mini.nvim' }
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
