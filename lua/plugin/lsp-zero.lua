local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings to learn about available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

lsp_zero.set_sign_icons({
  error = "✘",
  warn = "▲",
  hint = "⚑",
  info = "»",
})

-- Setup Mason (but do not install pyright via mason)
require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {},  -- Do not automatically install pyright
  handlers = {
    function(server_name)
      if server_name == "pyright" then
        -- Ensure we specify --stdio to establish the communication with the language server
        require("lspconfig")[server_name].setup({
          cmd = { 
            "C:\\Users\\pt533\\Desktop\\portable_binaries\\node-v22.14.0-win-x64\\pyright-langserver.cmd", 
            "--stdio"  -- Adding --stdio argument here
          },
          on_attach = lsp_zero.on_attach,
          capabilities = lsp_zero.capabilities,
        })
      else
        -- Default setup for other LSP servers
        require("lspconfig")[server_name].setup({})
      end
    end,
  },
})
