return {
  'ravitemer/mcphub.nvim',
  branch = 'main',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  build = 'npm install -g mcp-hub@latest', -- Installs `mcp-hub` node binary globally
  config = function()
    require('mcphub').setup { auto_approve = true }
  end,
}
