return {
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  { 'tpope/vim-sleuth' }, -- autodetects tabstop and shiftwidht
  { 'windwp/nvim-ts-autotag' }, -- autoclose tags
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require('ibl').setup {
        indent = {
          char = '▏', -- This is a slightly thinner char than the default one, check :help ibl.config.indent.char
        },
        scope = {
          show_start = false,
          show_end = false,
        },
      }
      -- disable indentation on the first level
      local hooks = require 'ibl.hooks'
      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
    end,
  },
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
