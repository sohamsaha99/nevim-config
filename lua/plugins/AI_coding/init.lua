return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    -- Read OpenAI key from an external file and export to the env
    local keyfile = vim.fn.expand("~/openai.key")
    if vim.fn.filereadable(keyfile) == 1 then
      local lines = vim.fn.readfile(keyfile)
      if #lines > 0 and lines[1] ~= "" then
        vim.env.OPENAI_API_KEY = lines[1]
      end
    end
    -- Optional: also respect an already-set env var (e.g. from shell)
    -- If you export OPENAI_API_KEY in your shell, that will override the file above.

    require("codecompanion").setup({
      adapters = {
        http = {
          openai = function()
            return require("codecompanion.adapters").extend("openai", {
              env = {
                api_key = vim.env.OPENAI_API_KEY,
              },
              schema = {
                model = {
                  default = "gpt-5",
                },
              },
            })
          end,
        },
      },
      strategies = {
        chat = {
          adapter = "openai",
        },
        inline = {
          adapter = "openai",
        },
        cmd = {
          adapter = "openai",
        }
      },
    })
  end
}
