-- copied default lua config from https://github.com/romgrk/barbar.nvim/blob/master/README.md
local map = vim.api.nvim_set_keymap
local opts = {
  noremap = true, silent = true
}

-- Move to previous/next
map('n', '_', ':BufferPrevious<CR>', opts)
map('n', '+', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<leader><', ':BufferMovePrevious<CR>', opts)
map('n', '<leader>>', ' :BufferMoveNext<CR>', opts)
-- Close buffer
map('n', '<C-w>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
-- map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
--
