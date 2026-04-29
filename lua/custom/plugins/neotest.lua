return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'fredrikaverpil/neotest-golang',
    'rouge8/neotest-rust',
  },
  keys = {
    { '<leader>Tt', function() require('neotest').run.run() end, desc = '[T]est nearest' },
    { '<leader>Tf', function() require('neotest').run.run(vim.fn.expand '%') end, desc = '[T]est [F]ile' },
    { '<leader>TF', function() require('neotest').run.run(vim.uv.cwd()) end, desc = '[T]est all [F]iles' },
    { '<leader>Tp', function() require('neotest').run.run(vim.fn.expand '%:p:h') end, desc = '[T]est [P]ackage' },
    { '<leader>Tl', function() require('neotest').run.run_last() end, desc = '[T]est [L]ast' },
    { '<leader>Tr', function() require('neotest').run.run_last() end, desc = '[T]est [R]erun last' },
    { '<leader>Ts', function() require('neotest').summary.toggle() end, desc = '[T]est [S]ummary' },
    { '<leader>To', function() require('neotest').output.open { enter = true, auto_close = true } end, desc = '[T]est [O]utput' },
    { '<leader>TO', function() require('neotest').output_panel.toggle() end, desc = '[T]est [O]utput panel' },
    { '<leader>TS', function() require('neotest').run.stop() end, desc = '[T]est [S]top' },
    { '<leader>Tw', function() require('neotest').watch.toggle(vim.fn.expand '%') end, desc = '[T]est [W]atch file' },
    { '[T', function() require('neotest').jump.prev { status = 'failed' } end, desc = 'Previous failed test' },
    { ']T', function() require('neotest').jump.next { status = 'failed' } end, desc = 'Next failed test' },
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-golang' {
          go_test_args = { '-v', '-race', '-count=1' },
          dap_go_enabled = false,
        },
        require 'neotest-rust',
      },
    }
  end,
}
