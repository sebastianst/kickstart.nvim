return {
  'stevearc/aerial.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  cmd = { 'AerialToggle', 'AerialOpen', 'AerialNavToggle' },
  keys = {
    { '<leader>o', '<cmd>AerialToggle!<CR>', desc = 'Code [O]utline (Aerial)' },
  },
  opts = {
    backends = { 'lsp', 'treesitter', 'markdown', 'man' },
    layout = {
      default_direction = 'prefer_right',
      min_width = 30,
    },
    attach_mode = 'global',
    filter_kind = false,
    show_guides = true,
    autojump = true,
  },
}
