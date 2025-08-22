return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim"
  },
  keys = {
    -- Launch file browser
    { "<leader>e", ":Telescope file_browser<CR>", desc = "Open file browser" }
  },
}
