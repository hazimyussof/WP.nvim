local lspconfig = require("lspconfig")

-- Set up pyright manually without lsp-zero
lspconfig.pyright.setup({
  cmd = { 
    "C:\\Users\\pt533\\Desktop\\portable_binaries\\node-v22.14.0-win-x64\\pyright-langserver.cmd", 
    "--stdio"
  },
  on_attach = function(client, bufnr)
    -- Optional: add custom key mappings
    print("Pyright attached to buffer " .. bufnr)
  end,
  capabilities = {
    textDocument = {
      completion = { completionItem = { snippetSupport = true } }
    }
  },
})
