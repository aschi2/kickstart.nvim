return {
  'olimorris/codecompanion.nvim',
  opts = {
    openai = {
      adapters = {
        api_key = os.getenv 'OPENAI_API_KEY',
        model = 'gpt-4.1',
      },
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
