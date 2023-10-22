local plugins ={
  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css", 
        "elixir",
        "erlang",
        "javascript",
        "heex",
        "eex"
      },
    },
  },
  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  }, 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tailwindcss",
        "elixirls",
        "erlangls",
        "html"
      },
    }
  },
}

return plugins
