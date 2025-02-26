-- See `:h telescope.builtin`
local builtin = require("telescope.builtin")

-- find files using telescope
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "[P]roject [F]iles" })
vim.keymap.set("n", "<leader>p.", builtin.oldfiles, { desc = "Recent [P]roject Files" })
vim.keymap.set("n", "<leader>pg", builtin.git_files, { desc = "[P]roject [G]it Files" })

-- grep using telescope
vim.keymap.set("n", "<leader>gw", builtin.grep_string, { desc = "[G]rep current [W]ord" })
vim.keymap.set("n", "<leader>gg", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "[G]rep [G]lobal Root Working File" })

-- document information using telescope
vim.keymap.set("n", "<leader>pt", builtin.builtin, { desc = "[P]roject search [T]elescope" })
vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "[P]roject [H]elp" })
vim.keymap.set("n", "<leader>pk", builtin.keymaps, { desc = "[P]roject [K]eymaps" })

-- coding information using telescope
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[] Find existing buffers" })
vim.keymap.set("n", "<leader>pd", builtin.diagnostics, { desc = "[P]roject [D]iagnostics" })

-- fzf search in current buffer
vim.keymap.set("n", "<leader>/", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		windblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

-- TODO-comments using telescope
vim.keymap.set("n", "<leader>tc", ":TodoTelescope<CR>", { desc = "[T]odo [C]omments" })
