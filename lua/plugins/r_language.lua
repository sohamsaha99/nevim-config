return {
  {
    "R-nvim/R.nvim",
    -- ft = { "r", "rmd" },
    -- build = ":call RBuild()",
    opts = {
      -- hook = {
      --   after_config = function()
      --     -- Optional: automatically start R when opening an .R file
      --     vim.g.R_auto_start = 1
      --   end,
      -- },
    },
  },

  -- LSP: R languageserver (install in R: install.packages("languageserver"))
  {
    "neovim/nvim-lspconfig",
    -- ft = { "r", "rmd", "quarto" },
    dependencies = { "saghen/blink.cmp" },
    config = function()
      print(os.date("%H:%M:%S"))
      local lspconfig = require("lspconfig")
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      lspconfig.r_language_server.setup({
        capabilities = capabilities,
      })
    end,
  },
}

