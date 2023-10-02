-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.nu = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.keymap.set("n", "<leader>eo", ":silent !nautilus .&<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("v", "y", "ygv<Esc>")

vim.keymap.set("n", "<leader>oj", "o<Esc>k")
vim.keymap.set("n", "<leader>ok", "O<Esc>j")
vim.keymap.set("n", "<leader>op", "o<Esc>p")
vim.keymap.set("n", "<leader>OP", "O<Esc>p")
vim.keymap.set("n", "<leader>oo", "o<Esc>")
vim.keymap.set("n", "<leader>OO", "O<Esc>")
vim.keymap.set("n", "<leader>oi", "i<CR><Esc>")

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", function()
	builtin.git_files({ recurse_submodules = true, use_git_root = true })
end)

return {}
