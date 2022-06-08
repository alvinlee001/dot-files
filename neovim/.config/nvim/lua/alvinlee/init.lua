-- require ('alvinlee.notify')
require ('alvinlee.nvim-autopairs')
require ('alvinlee.rust-tools')
require ('alvinlee.toggleterm')
require ('alvinlee.devicons')
require ('alvinlee.barbar')
require ('alvinlee.lualine')
require ('alvinlee.nvim-lsp-installer')
require ('alvinlee.telescope')
require ('alvinlee.lsp-config')
require ('alvinlee.tabnine')

vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
require('lspfuzzy').setup {}
