-- https://github.com/akinsho/bufferline.nvim
-- Bufferline is a snazzy buffer line for Neovim. It is heavily customizable and provides a variety of ways to display the current list of buffers.
--

return {
	"akinsho/bufferline.nvim",
	version = "*",
	-- `BufReadPre` event to prevent show a `No Name` buffer when open a directory use nvim directly
	event = "BufReadPre",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
			},
		})
	end,
}
