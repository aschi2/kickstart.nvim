return {
  'MeanderingProgrammer/render-markdown.nvim', -- renamed upstream from markdown.nvim
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('render-markdown').setup {}
  end,
}
