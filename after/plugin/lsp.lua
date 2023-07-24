local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())


require('lspconfig').rust_analyzer.setup({
    settings = {
        ['rust_analyzer'] = {

        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = {"rust"},
            cargo = {
                allFeatures = true,
            }
        },
    },
})
lsp.setup()
