return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  config = function()
    require('rose-pine').setup {
      styles = {
        comments = { italic = false }, -- Disable italics in comments
      },
    }
    -- vim.cmd.colorscheme 'rose-pine-dawn'
  end,
}
