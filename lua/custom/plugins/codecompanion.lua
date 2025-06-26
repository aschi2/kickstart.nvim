return {
  'olimorris/codecompanion.nvim',
  lazy = false,
  opts = {
    extensions = {
      mcphub = {
        callback = 'mcphub.extensions.codecompanion',
        opts = {
          show_result_in_chat = true,
          make_vars = true,
          make_slash_commands = true,
        },
      },
    },
    strategies = {
      chat = {
        adapter = 'openai',
        parameters = { reasoning_effort = 'high' },
        tools = {
          opts = {
            auto_submit_errors = true,
            auto_submit_success = true,
          },
        },
      },
      inline = {
        adapter = 'openai',
        parameters = { reasoning_effort = 'high' },
      },
      cmd = {
        adapter = 'openai',
        parameters = { reasoning_effort = 'high' },
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
              default = 'o3-2025-04-16',
            },
          },
        })
      end,
    },
    gemini = function()
      return require('codecompanion.adapters').extend('gemini', {
        schema = {
          model = {
            default = 'gemini-2.5-pro-preview-06-05',
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
