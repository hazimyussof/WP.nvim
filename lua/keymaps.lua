-- open netrw file explorer
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

-- navigate shown buffer windows using <Shift> instead of <C-w>
vim.keymap.set("n", "[b", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "]b", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<S-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<S-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- move highlighted text/code anywhere
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- when navigating search terms, the cursor stays in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "Nzzzv")

-- not losing your paste buffer when pasting to a highlighted text
vim.keymap.set("x", "<leader>p", '"_dp')

-- yank to the end of the line and not the entire line if a code is wrapped
vim.keymap.set("n", "Y", "yg$")

-- yank to clipboard (<leader>y, then paste)
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- refactors the word where your cursor is and replaces them throught the whole document
vim.keymap.set("n", "<leader>sr", ":%s/\\<<C-r><C-w>\\>//gI<Left><Left><Left>")

-- edits beginning and end of the highlighted words
vim.keymap.set("v", "<leader>eb", ":s!^!! | noh/gI<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>") -- beginning of the line
vim.keymap.set("v", "<leader>ee", ":s!$!! | noh/gI<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>") -- end of the line

-- #### PLUGIN KEYMAPS ####

-- # Neo Tree #
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- # Bufferline #
vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { desc = "Delete other buffers" })
vim.keymap.set("n", "<leader>br", ":bdelete<CR>", { desc = "Delete current buffer from list" })
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { desc = "Prev buffer" })
