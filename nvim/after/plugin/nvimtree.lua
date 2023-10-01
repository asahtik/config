local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
	vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
	vim.keymap.set("n", "<leader>et", ":NvimTreeToggle<CR>")
	vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>")
end

-- pass to setup along with your other options
require("nvim-tree").setup({
	---
	hijack_cursor = true,
	on_attach = my_on_attach,
	actions = {
		change_dir = {
			enable = true,
			global = true,
		}
	},
	update_focused_file = {
		enable = true,
	},
	disable_netrw = false,
	hijack_netrw = true,
	---
})
