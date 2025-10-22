return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/neotest-python',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('neotest').setup {

      adapters = {
        require 'neotest-python' {
          dap = { justMyCode = false },
          runner = 'pytest',
          args = { '--maxfail=1', '--disable-warnings' },
        },
      },
      quickfix = {
        enabled = true,
        open = false,
      },
      output = {
        open_on_run = true,
      },
    }
  end,
}
