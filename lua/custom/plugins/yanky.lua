return {
  'gbprod/yanky.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  opts = {
    ring = {
      history_length = 50,
    },
    highlight = {
      on_put = true,
      on_yank = true,
      timer = 200,
    },
  },
  keys = {
    { 'p', '<Plug>(YankyPutAfter)', mode = { 'n', 'x' }, desc = 'Put after' },
    { 'P', '<Plug>(YankyPutBefore)', mode = { 'n', 'x' }, desc = 'Put before' },
    { '<C-p>', '<Plug>(YankyPreviousEntry)', desc = 'Cycle yank history back' },
    { '<C-n>', '<Plug>(YankyNextEntry)', desc = 'Cycle yank history forward' },
    { '<leader>fy', '<cmd>Telescope yank_history<cr>', desc = '[F]ind [Y]ank history' },
  },
}
