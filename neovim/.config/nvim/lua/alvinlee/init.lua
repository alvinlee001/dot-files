require ('alvinlee.lsp-config')
require ('alvinlee.notify')
require ('alvinlee.nvim-autopairs')
require ('alvinlee.rust-tools')
require ('alvinlee.toggleterm')
require ('alvinlee.devicons')


vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
require('lspfuzzy').setup {}