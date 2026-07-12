return {
  'ravitemer/mcphub.nvim',
  -- Pinned: last commit compatible with codecompanion v17 (mcphub added
  -- codecompanion-v18 support in 5193329 and reads config.interactions.*,
  -- which is nil on v17). Bump together with codecompanion.
  commit = '8ff40b5',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  build = 'npm install -g mcp-hub@latest', -- Installs `mcp-hub` node binary globally
  config = function()
    require('mcphub').setup { auto_approve = true }
  end,
}
