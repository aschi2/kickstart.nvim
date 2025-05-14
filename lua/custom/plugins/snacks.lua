vim.api.nvim_create_autocmd('User', {
  pattern = 'MiniFilesActionRename',
  callback = function(event)
    Snacks.rename.on_rename_file(event.data.from, event.data.to)
  end,
})

vim.keymap.set('n', '<leader>gb', function()
  Snacks.gitbrowse()
end, { desc = '[G]it [B]rowse' })
vim.keymap.set('n', '<leader>lg', function()
  Snacks.lazygit()
end, { desc = '[L]azy [G]it' })
return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    animate = { enabled = true },
    bigfile = { enabled = true },
    debug = { enabled = true },
    gitbrowse = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    lazygit = { enabled = true },
    notify = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    rename = { enabled = true },
    scope = { enabled = true },
    statuscolumn = { enabled = true },
    terminal = { enabled = true },
    util = { enabled = true },
    win = { enabled = true },
    words = { enabled = true },
  },
}
