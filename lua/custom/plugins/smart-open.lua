-- telescope-fzf-native (used for match_algorithm fzf) is added by init.lua
vim.pack.add {
  { src = 'https://github.com/danielfalk/smart-open.nvim', version = '0.2.x' },
  'https://github.com/kkharji/sqlite.lua',
}

require('telescope').load_extension 'smart_open'
