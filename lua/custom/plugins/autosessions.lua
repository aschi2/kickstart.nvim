vim.pack.add { 'https://github.com/rmagatti/auto-session' }

---enables autocomplete for opts
---@module "auto-session"
---@type AutoSession.Config
require('auto-session').setup {
  suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
  -- log_level = 'debug',
}
