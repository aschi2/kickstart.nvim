local vault = vim.fn.expand '~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian Vault'

vim.pack.add {
  -- community-maintained successor to epwalsh/obsidian.nvim
  { src = 'https://github.com/obsidian-nvim/obsidian.nvim', version = vim.version.range '*' }, -- recommended, use latest release instead of latest commit
}

vim.o.conceallevel = 1

require('obsidian').setup {
  workspaces = {
    {
      name = 'Obsidian',
      path = vault,
    },
  },
  -- completion comes from obsidian's built-in obsidian-ls LSP (3.x+)
  completion = {
    min_chars = 2,
  },
  legacy_commands = false, -- use the new :Obsidian <subcommand> style
  new_notes_location = 'current_dir',
}
