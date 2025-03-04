return {
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  { 'tpope/vim-sleuth' }, -- autodetects tabstop and shiftwidht
  { 'windwp/nvim-ts-autotag' }, -- autoclose tags
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
  { 'lewis6991/gitsigns.nvim' },
  { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true, opts = {} },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {}
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup { vim.keymap.set('n', '<leader>tc', '<cmd>ColorizerToggle<CR>') }
    end,
  },
}
