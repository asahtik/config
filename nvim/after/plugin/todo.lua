require("todo-comments").setup({
	highlight = {
		pattern = [[.*<(KEYWORDS)(\(.+\))?\s*:]]
	},
	search = {
		pattern = [[.*<(KEYWORDS)(\(.+\))?\s*:]]
	}
})
