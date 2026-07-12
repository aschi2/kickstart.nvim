local vault = vim.fn.expand '~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian Vault'

return {
  'obsidian-nvim/obsidian.nvim', -- community-maintained successor to epwalsh/obsidian.nvim
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    'BufReadPre ' .. vault .. '/**/*.md',
    'BufNewFile ' .. vault .. '/**/*.md',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    workspaces = {
      {
        name = 'Obsidian',
        path = vault,
      },
    },
    completion = {
      nvim_cmp = false,
      blink = true,
      min_chars = 2,
    },
    new_notes_location = 'current_dir',
  },
  init = function()
    vim.o.conceallevel = 1
  end,
}
