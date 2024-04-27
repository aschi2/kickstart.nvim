-- https://github.com/goolord/alpha-nvim
-- Startup Splash Screen for Neovim
package.path = package.path .. ';../plugin-deps/custom-startup.lua'
return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local function read_header_from_file(path)
      local lines = {}
      path = vim.fs.normalize(path)
      for line in io.lines(path) do
        table.insert(lines, line)
      end
      return lines
    end

    -- Set header
    dashboard.section.header.val = read_header_from_file '~/.anya'

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('s', '  > Settings', ':e ~/.config/nvim/init.lua | pwd<CR>'),
      dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
    }

    -- Set footer
    --   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
    --   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
    --   ```init.lua
    --   return require('packer').startup(function()
    --       use 'wbthomason/packer.nvim'
    --       use {
    --           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
    --           requires = {'BlakeJC94/alpha-nvim-fortune'},
    --           config = function() require("config.alpha") end
    --       }
    --   end)
    --   ```
    -- local fortune = require("alpha.fortune")
    -- dashboard.section.footer.val = fortune()
    local function footer()
      return {}
    end
    dashboard.section.footer.val = footer()

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[
    autocmd FileType alpha setlocal nofoldenable
]]
  end,
}
