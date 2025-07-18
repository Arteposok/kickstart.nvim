return {
  'folke/tokyonight.nvim',
  name = 'tokyonight',
  priority = 1000,
  config = function()
    require('tokyonight').setup {
      styles = {
        comments = { italic = false }, -- Disable italics in comments
      },
    }
    vim.cmd.colorscheme 'tokyonight'
  end,
}
