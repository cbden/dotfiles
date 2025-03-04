-- For conciseness
local opts = { noremap = true, silent = true }

-- Close buffer
vim.keymap.set('n', '<leader>xb', '<cmd>bd!<CR>')

-- Close split
vim.keymap.set('n', '<leader>xs', '<cmd>close!<CR>')

-- Open Netrw
vim.keymap.set('n', '<leader>e', '<cmd>Explore<CR>')

-- Turn off highlight
vim.keymap.set('n', '<leader>h', '<cmd>nohlsearch<CR>')

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Delete single character without copying into register
vim.keymap.set({ 'n', 'v' }, 'x', '"_x', opts)

-- Delete without yank
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Tabs
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<s-Tab>', ':bprev<CR>')

-- Move lines
vim.keymap.set('v', 'J', 'xp`[V`]')
vim.keymap.set('v', 'K', 'xkP`[V`]')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>lD', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>ld', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
