return {
  'nanozuki/tabby.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VimEnter',
  opts = {
    preset = 'tab_with_top_win',
    option = {
      nerdfont = true,
      buf_name = { mode = 'unique' },
    },
  },
  keys = {
    { '<leader>tn', '<cmd>tabnew<cr>', desc = 'New tab' },
    { '<leader>tc', '<cmd>tabclose<cr>', desc = 'Close tab' },
    { '<leader>to', '<cmd>tabonly<cr>', desc = 'Close other tabs' },
    { '<leader>tr', ':TabRename ', desc = 'Rename tab' },
    { '<leader>tp', '<cmd>TabbyPickWindow<cr>', desc = 'Pick window' },
    { ']t', '<cmd>tabnext<cr>', desc = 'Next tab' },
    { '[t', '<cmd>tabprevious<cr>', desc = 'Previous tab' },
  },
}
