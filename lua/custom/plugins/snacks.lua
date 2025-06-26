-- utility to read header from file
local function read_header(path)
  local lines = {}
  path = vim.fs.normalize(path)
  for line in io.lines(path) do
    table.insert(lines, line)
  end
  return table.concat(lines, '\n')
end

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
    animate = { enabled = true },
    bigfile = { enabled = true },
    dashboard = { -- Dashboard configuration should be directly here
      enabled = true,
      preset = {
        header = read_header '~/.anya',
        keys = {
          {
            icon = ' ',
            key = 'e',
            desc = 'New file',
            action = ':ene | startinsert',
          },
          {
            icon = ' ',
            key = 'r',
            desc = 'Recent',
            action = function()
              require('telescope.builtin').oldfiles()
            end,
          },
          {
            icon = ' ',
            key = 's',
            desc = 'Settings',
            action = ':e ~/.config/nvim/init.lua | pwd',
          },
          {
            icon = '󰒲 ',
            key = 'l',
            desc = 'Lazy',
            action = ':Lazy',
          },
          {
            icon = ' ',
            key = 'q',
            desc = 'Quit NVIM',
            action = ':qa',
          },
        },
        sections = {
          { header = 'header' },
          { keys = 'keys' },
          { section = 'startup' },
        },
      },
    },
    debug = { enabled = true },
    gitbrowse = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notify = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    rename = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    terminal = { enabled = true },
    util = { enabled = true },
    win = { enabled = true },
    words = { enabled = true },
  },
}
