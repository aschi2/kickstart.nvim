-- https://github.com/akinsho/bufferline.nvim
-- Bufferline is a snazzy buffer line for Neovim. It is heavily customizable and provides a variety of ways to display the current list of buffers.
--

vim.pack.add { 'https://github.com/akinsho/bufferline.nvim' }

require('bufferline').setup {
  options = {
    diagnostics = 'nvim_lsp',
  },
}
