return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "catppuccin"
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = true, -- disables setting the background color.
		})

		-- setup must be called before loading
		vim.cmd.colorscheme "catppuccin"
	end
}
