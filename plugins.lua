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
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end

      -- Make opened buffers words available in autocomplete
      opts.sources = {
        {
          name = 'buffer',
          option = {
            -- sets keyword lenght trigger to 1 from default 3
            keyword_length = 1,
            --
            -- gets words from opened buffers
            get_bufnrs = function()
              return vim.api.nvim_list_bufs()
            end
          }
        }
      }
    end,
  },
}

return plugins
