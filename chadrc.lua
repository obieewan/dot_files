---@type ChadrcConfig
local M = {}

M.ui = { 
  theme = 'solarized_dark',
  -- triggers tabs
  tabufline = {
    enabled= false
  }
}

M.plugins = "custom.plugins"

--[[ added to plugins 
M.cmp ={
  sources = {
    { name = "buffer",
      option = {
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
}
]]

return M
