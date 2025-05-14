return {
  'olimorris/codecompanion.nvim',
  opts = {
    strategies = {
      chat = {
        adapter = 'openai',
      },
      inline = {
        adapter = 'openai',
      },
      cmd = {
        adapter = 'openai',
      },
    },
    adapters = {
      openai = function()
        return require('codecompanion.adapters').extend('openai', {
          env = {
            api_key = 'OPENAI_API_KEY',
          },
          schema = {
            model = {
              default = 'gpt-4.1',
            },
          },
        })
      end,
    },
    gemini = function()
      return require('codecompanion.adapters').extend('gemini', {
        schema = {
          model = {
            default = 'Gemini-2.5-pro-exp-03-25',
          },
        },
        env = {
          api_key = 'GEMINI_API_KEY',
        },
      })
    end,
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  keys = {
    { '<leader>ca', '<cmd>CodeCompanionActions<cr>', desc = 'Code Companion' },
  },
}
