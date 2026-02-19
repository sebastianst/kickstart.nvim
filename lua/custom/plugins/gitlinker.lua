return {
  'ruifm/gitlinker.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    { '<leader>gy', function() require('gitlinker').get_buf_range_url('n') end, desc = '[G]it [Y]ank permalink' },
    { '<leader>gy', function() require('gitlinker').get_buf_range_url('v') end, mode = 'v', desc = '[G]it [Y]ank permalink' },
  },
}
