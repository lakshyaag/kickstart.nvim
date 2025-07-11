return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    options = { indicator = { style = 'underline' } },
    config = function()
      require('bufferline').setup {}
    end,
  },
}
