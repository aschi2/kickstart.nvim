return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    -- 'BufReadPre /Users/austin/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Obsidian\\ Vault/*.md',
    -- 'BufNewFile /Users/austin/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Obsidian\\ Vault/*.md',
    'BufReadPre /Users/austin/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian Vault/**/*.md',
    'BufNewFile /Users/austin/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian Vault/**/*.md',
  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter/nvim-treesitter',
    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = 'Obsidian',
        path = '/Users/austin/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian Vault',
      },
    },
  },
  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  new_notes_location = 'current_dir',
  init = function()
    vim.o.conceallevel = 1
  end,
}
