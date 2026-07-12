-- Markdown code-cell textobjects and motions.
-- The @code_cell captures are defined in after/queries/markdown/textobjects.scm.
vim.pack.add { { src = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects', version = 'main' } }

require('nvim-treesitter-textobjects').setup {
  select = {
    lookahead = true, -- you can change this if you want
  },
  move = {
    set_jumps = false, -- you can change this if you want.
  },
}

-- Select in/around code block
vim.keymap.set({ 'x', 'o' }, 'ib', function()
  require('nvim-treesitter-textobjects.select').select_textobject('@code_cell.inner', 'textobjects')
end, { desc = 'in block' })
vim.keymap.set({ 'x', 'o' }, 'ab', function()
  require('nvim-treesitter-textobjects.select').select_textobject('@code_cell.outer', 'textobjects')
end, { desc = 'around block' })

-- Jump between code blocks
vim.keymap.set({ 'n', 'x', 'o' }, ']b', function()
  require('nvim-treesitter-textobjects.move').goto_next_start('@code_cell.inner', 'textobjects')
end, { desc = 'next code block' })
vim.keymap.set({ 'n', 'x', 'o' }, '[b', function()
  require('nvim-treesitter-textobjects.move').goto_previous_start('@code_cell.inner', 'textobjects')
end, { desc = 'previous code block' })

-- Swap code blocks (only works under the same markdown header)
vim.keymap.set('n', '<leader>sbl', function()
  require('nvim-treesitter-textobjects.swap').swap_next '@code_cell.outer'
end, { desc = 'swap code block with next' })
vim.keymap.set('n', '<leader>sbh', function()
  require('nvim-treesitter-textobjects.swap').swap_previous '@code_cell.outer'
end, { desc = 'swap code block with previous' })
