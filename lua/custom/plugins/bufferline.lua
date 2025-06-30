return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        diagnostics = 'nvim_lsp',
        color_icons = true,
        always_show_bufferline = true,
        separator_style = 'thin',
      },
    }
    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', {})
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {})
  end,
}
