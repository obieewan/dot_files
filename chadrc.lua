---@type ChadrcConfig
local M = {}

M.ui = { 
  theme = 'solarized_dark',
  tabufline = {
    enabled= false
  }
}

M.plugins = "custom.plugins"

--[[
M.cmp ={
  sources = {
    { name = "buffer",
      option = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end
      }
    }
  }
}
]]

return M
