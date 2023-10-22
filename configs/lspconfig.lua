local on_attach = require("plugins.configs.lspconfig").on_attach()
local capabalities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()

--[[
local servers = { "html", "cssls", "clangd", "tailwindcss", "emmet_ls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
]]

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "elixir", "eelixir", "heex" },
  root_dir = lspconfig.util.root_pattern('tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js', 'postcss.config.ts', 'package.json', 'node_modules', '.git', 'mix.exs'),
  init_options = {
    userLanguages = {
      elixir = "html-eex",
      eelixir = "html-eex",
      heex = "html-eex",
    },
  },
  settings = {
    tailwindCSS = {
      experimental = {
        classRegex = {
          'class[:]\\s*"([^"]*)"',
        },
      },
    },
  },
})

lspconfig.emmet_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "css", "elixir", "eelixir", "heex" },
})
