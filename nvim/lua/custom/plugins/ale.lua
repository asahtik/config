vim.g.ale_use_neovim_diagnostics_api = 1
vim.g.ale_disable_lsp = 'auto'
vim.g.ale_enabled = 0

return {
	'dense-analysis/ale',
	on_attach = function(bufnr)
		local nmap = function(keys, func, desc)
			if desc then
				desc = 'ALE: ' .. desc
			end

			vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
		end
		nmap('K', ':ALEHover<CR>', 'Hover Documentation')
		nmap('gd', ':ALEGoToDefinition<CR>', '[G]oto [D]efinition')
		nmap('gr', ':ALEFindReferences<CR>', '[G]oto [R]eferences')
		nmap('<leader>rn', ':ALERename<CR>', '[R]e[n]ame')
		nmap('<leader>ca', ':ALECodeAction<CR>', '[C]ode [A]ction')
	end,
}
