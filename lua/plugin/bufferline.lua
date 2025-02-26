vim.opt.termguicolors = true
require("bufferline").setup({
	options = {
		show_buffer_close_icons = false,
		--separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
		separator_style = "slope",
	},
}) 
