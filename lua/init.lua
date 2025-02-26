-- include path for pyright and npm
vim.env.PATH = vim.env.PATH .. ";C:\\Users\\pt533\\Desktop\\portable_binaries\\node-v22.14.0-win-x64"
-- include path for diff (usage for undotree)
vim.env.PATH = vim.env.PATH .. ";C:\\Users\\pt533\\AppData\\Local\\Programs\\Git\\usr\\bin"
-- include path for ripgrep (usage for telescope to search things like todo-comments)
vim.env.PATH = vim.env.PATH .. ";C:\\Users\\pt533\\Desktop\\portable_binaries\\ripgrep-14.1.1-x86_64-pc-windows-msvc"

require("set")
require("keymaps")

-- plugin configs:

-- UI stuff
require("plugin.neo-tree")
require("plugin.bufferline")
require("plugin.telescope")
require("plugin.lualine")
require("plugin.indent-blackline")

-- LSP stuff
require("plugin.treesitter")
require("plugin.lsp-zero")
require("plugin.lspconfig")
require("plugin.conform")

-- Tools
require("plugin.undotree")
require("plugin.mini-pairs")
require("plugin.surround")
require("plugin.comment")
require("plugin.todo-comments")
