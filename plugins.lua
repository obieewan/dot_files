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

  -- Install by default LSP
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tailwindcss",
        "elixirls",
        "erlangls",
        "html",
        "emmet_ls",
      },
    }
  },

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  }, 

  -- Highlights tailwincss with its color
  {
    "NvChad/nvim-colorizer.lua",
    config = function ()
      require("colorizer").setup({
        user_default_options = {
          tailwind = true,
        },
      })
    end,
  },

  -- Show color swatches in autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      -- Make opened buffers words available in autocomplete
        local cmp = require("cmp")

      opts.sources ={
        { name = "buffer",
          option = {
            keyword_length = 1,
            get_bufnrs = function()
              return vim.api.nvim_list_bufs()
            end
          }
        },
        { name = "nvim_lsp"  },
        { name = "path" },
        { name = "luasnip" },
        { name = "nvim_lua" },
      } 

      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
}

return plugins
