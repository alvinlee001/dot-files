" ==============================================================================
" Plugin manager (Plug) settings
" ==============================================================================

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" START-OF-PLUG
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" colorscheme
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'ajmwagar/vim-deus'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
" automatically closing pair stuff
Plug 'jiangmiao/auto-pairs'
" commenting support (gc)
Plug 'tpope/vim-commentary'
" camelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'
" heuristically set indent settings
Plug 'tpope/vim-sleuth'
" highlighting for all
Plug 'sheerun/vim-polyglot'
" replace selection with paste
Plug 'vim-scripts/ReplaceWithRegister'
" split - join multilines
Plug 'AndrewRadev/splitjoin.vim'
" easymotion
Plug 'easymotion/vim-easymotion'
" neoformat
Plug 'sbdchd/neoformat'
" ale (Linting Engine)
Plug 'w0rp/ale'
" editorconfig
Plug 'editorconfig/editorconfig-vim'
" emmet
Plug 'mattn/emmet-vim'
" running tests with different ganularities
Plug 'janko-m/vim-test'
" vtr
Plug 'christoomey/vim-tmux-runner'
" git commit message
Plug 'rhysd/committia.vim'
" fzf binding
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" global replace
Plug 'skwp/greplace.vim'
" nerdtree file browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
" nerdtree git plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
" lightline
Plug 'itchyny/lightline.vim'
" buffers tabline
Plug 'ap/vim-buftabline'
" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'roxma/nvim-completion-manager'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" delete all but current buffer
Plug 'vim-scripts/BufOnly.vim', { 'on': 'Bonly' }
" intelligent buffer closing
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
" fugitive
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" surround (cs"')
Plug 'tpope/vim-surround'
" matchit enhances jump motion
Plug 'tmhedberg/matchit'
" vim + tmux clipboard
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'
" gitgutter
Plug 'airblade/vim-gitgutter'
" tagbar
Plug 'majutsushi/tagbar'
" better start
Plug 'mhinz/vim-startify'
" echodoc
Plug 'Shougo/echodoc.vim'
" table-mode
Plug 'dhruvasagar/vim-table-mode'
" reasonml
Plug 'reasonml-editor/vim-reason-plus'

" Alvin Start
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Galooshi/import-js'
Plug 'galooshi/vim-import-js'
Plug 'aradunovic/perun.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'chriskempson/tomorrow-theme'
Plug 'chriskempson/base16-vim'
Plug 'miconda/lucariox.vim'
"Auto close tags
Plug 'alvan/vim-closetag'
"ESLint auto fix
Plug 'ruanyl/vim-fixmyjs'
"Snippets
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
" For focus
Plug 'junegunn/goyo.vim'
" PHP plugins
Plug 'StanAngeloff/php.vim'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'arnaud-lb/vim-php-namespace'
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
Plug 'stephpy/vim-php-cs-fixer'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'ervandew/supertab'
" Java plugins
Plug 'artur-shaik/vim-javacomplete2'
" Plug 'neomake/neomake'
" Plugin to record time used in programming
Plug 'wakatime/vim-wakatime'
" Some say better than NerdTree
Plug 'Shougo/vimfiler.vim'
" Unite
Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim'
" Icons for nerdtree
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Match tags
Plug 'Valloric/MatchTagAlways'
" Airline themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" css color preview
Plug 'gorodinskiy/vim-coloresque'
" typescript support
Plug 'Quramy/tsuquyomi'
" Alvin End
call plug#end()

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" END-OF-PLUG
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" ==============================================================================
" Basic settings
" ==============================================================================

language en_US
set shell=/bin/zsh        " Setting shell to zsh
set number                " Line numbers on
set rnu                   " Relative line numbers on
set noshowmode            " Always show mode
set showcmd               " Show commands as you type them
set textwidth=125         " Text width is 120 characters
set cmdheight=1           " Command line height
set pumheight=10          " Completion window max size
set noswapfile            " New buffers will be loaded without creating a swapfile
set hidden                " Enables to switch between unsaved buffers and keep undo history
set clipboard+=unnamed    " Allow to use system clipboard
set lazyredraw            " Don't redraw while executing macros (better performance)
set showmatch             " Show matching brackets when text indicator is over them
set matchtime=2           " How many tenths of a second to blink when matching brackets
set nostartofline         " Prevent cursor from moving to beginning of line when switching buffers
set virtualedit=block     " To be able to select past EOL in visual block mode
set nojoinspaces          " No extra space when joining a line which ends with . ? !
set scrolloff=10           " Scroll when closing to top or bottom of the screen
set mouse=a               " Scrolling with touchpad
set updatetime=1000       " Update time used to create swap file or other things
set suffixesadd+=.js,.rb  " Add js and ruby files to suffixes
set synmaxcol=160         " Don't try to syntax highlight minified files
set nowrap                " Don't wrap lines
set expandtab             " Use space characters in place of tab characters
set softtabstop=2         " Two spaces soft tab stop
set shiftwidth=2          " Two spaces when indenting
set signcolumn=yes        " Always show signcolumns
set exrc                  " Folder specific configuration

" ==============================================================================
" Split settings
" ==============================================================================

set splitbelow " Splitting a window will put the new window below the current
set splitright " Splitting a window will put the new window right of the current

" ==============================================================================
" Timeout settings
" ==============================================================================

" Time out on key codes but not mappings. Basically this makes terminal Vim
" work sanely. (by Steve Losh)
set notimeout
set ttimeout
set ttimeoutlen=10

" ==============================================================================
" Spelling settings
" ==============================================================================

set nospell

" ==============================================================================
" Search settings
" ==============================================================================

set ignorecase " Ignore case by default
set smartcase  " Make search case sensitive only if it contains U letters
set wrapscan   " Search again from top when reached the bottom
set nohlsearch " Don't highlight after search

" ==============================================================================
" Filetype settings
" ==============================================================================

filetype plugin on
filetype indent on

" ==============================================================================
" Neovim specific settings
" ==============================================================================

let g:loaded_python_provider=1                    " Disable python 2 interface
let g:python_host_skip_check=1                    " Skip python 2 host check
let g:python_host_prog='/usr/local/bin/python2'   " Set python 2 host program
let g:python3_host_prog='/usr/local/bin/python3'  " Set python 3 host program

if has('termguicolors')
  set termguicolors " Turn on true colors support
endif

" ==============================================================================
" Colorscheme + Highlighting + Airline settings
" ==============================================================================

syntax on
set background=dark
" My favorite themes, color is good!!
colorscheme base16-oceanicnext
" colorscheme base16-paraiso
" colorscheme base16-solarflare
" colorscheme base16-darktooth
" colorscheme deus
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'

" ==============================================================================
" Mappings
" ==============================================================================

" ------------------------------------------------------------------------------
" Leader
" ------------------------------------------------------------------------------

let g:mapleader="\<space>"

" ------------------------------------------------------------------------------
" Insane Defaults
" ------------------------------------------------------------------------------

nnoremap <up> <NOP>
nnoremap <down> <NOP>
nnoremap <left> <NOP>
nnoremap <right> <NOP>
nnoremap <bs> <NOP>
nnoremap <delete> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>
nnoremap <Space> <NOP>
inoremap <F1> <NOP>
nnoremap <F1> <NOP>
nnoremap Q <NOP>

" ------------------------------------------------------------------------------
" Insane Overrides
" ------------------------------------------------------------------------------

" Easier window switching
nmap <silent> <C-w><C-w> :call utils#intelligentCycling()<CR>

" Visual linewise up and down by default (and use gj gk to go quicker)
nnoremap j gj
nnoremap k gk
nnoremap gj 5j
nnoremap gk 5k
vnoremap j gj
vnoremap k gk
vnoremap gj 5j
vnoremap gk 5k

" Same when moving up and down
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-u> <C-u>zz
vnoremap <C-d> <C-d>zz
vnoremap <C-f> <C-f>zz
vnoremap <C-b> <C-b>zz

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" More logical Y (default was alias for yy)
nnoremap Y y$

" Don't yank to default register when changing something
nnoremap c "xc
xnoremap c "xc

" After block yank and paste, move cursor to the end of operated text and don't override register
vnoremap y y`]
vnoremap p "_dP`]
nnoremap p p`]

" Fix the cw at the end of line bug default vim has special treatment (:help cw)
nmap cw ce
nmap dw de

" Uppercase word in insert mode
inoremap <C-u> <ESC>mzgUiw`za

" Matching brackets with TAB (using matchit) (Breaks the <C-i> jump)
map <TAB> %
silent! unmap [%
silent! unmap ]%

" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv

" Make . work with visually selected lines
xnoremap . :norm.<CR>

" Navigate popup menu
inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "\<C-k>"

" ------------------------------------------------------------------------------
" Common tasks
" ------------------------------------------------------------------------------

" Quick save and close buffer
nnoremap ,w :w<CR>
nnoremap <silent> ,c :Sayonara!<CR>
nnoremap <silent> ,q :Sayonara<CR>

" Yank and paste from clipboard
nnoremap ,y "+y
vnoremap ,y "+y
nnoremap ,yy "+yy
nnoremap ,p "+p

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Reselect last-pasted text
nnoremap gp `[v`]

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" [S]plit line (sister to [J]oin lines) S is covered by cc.
nnoremap S mzi<CR><ESC>`z

" Easier fold toggling
nnoremap ,z za

" Start substitute on current word under the cursor
nnoremap ,s :%s///gc<Left><Left><Left>

" Start search on current word under the cursor
nnoremap ,/ /<CR>

" Start reverse search on current word under the cursor
nnoremap ,? ?<CR>

" Faster sort
vnoremap ,s :!sort<CR>

" Quiting and saving all
cnoremap ww wqall
cnoremap qq qall

" Terminal-mode escape
tnoremap <Esc> <C-\><C-n>

" less key stroke
nnoremap ; :

" ------------------------------------------------------------------------------
" F-key actions
" ------------------------------------------------------------------------------

" Toggle NERDTree
" nnoremap <silent> <F1> :NERDTreeToggle %<CR>
nnoremap <silent> <F1> :call utils#nerdWrapper()<CR>
" nnoremap <silent> <F1> :VimFilerExplorer<CR>
" Toggle tagbar
nnoremap <silent> <F2> :TagbarToggle<CR>
" Toggle fmt
nnoremap <silent> <F3> :call utils#toggleFmt()<CR>
" Source (reload configuration)
nnoremap <silent> <F4> :source $MYVIMRC<CR>
" Toggle pastemode
nnoremap <silent> <F5> :set paste!<CR> :set nopaste?<CR>
" Toggle search highlight
nnoremap <silent> <F6> :set nohlsearch!<CR> :set nohlsearch?<CR>
" Toggle white characters visibility
nnoremap <silent> <F7> :set list!<CR> :set list?<CR>
" Free
" nnoremap <silent> <F8>
" Free
" nnoremap <silent> <F9>
" Free
" nnoremap <silent> <F10>
" Free
" nnoremap <silent> <F11>
" Free
" nnoremap <slient> <F12>

" ------------------------------------------------------------------------------
" Buffer management
" ------------------------------------------------------------------------------

" Intelligent windows resizing using ctrl + arrow keys
nnoremap <silent> <C-Right> :call utils#intelligentVerticalResize('right')<CR>
nnoremap <silent> <C-Left> :call utils#intelligentVerticalResize('left')<CR>
nnoremap <silent> <C-Up> :resize +1<CR>
nnoremap <silent> <C-Down> :resize -1<CR>

" Buffers navigation and management
nnoremap <silent> + :bn<CR>
nnoremap <silent> _ :bp<CR>


" File and Window Management
nnoremap <leader>w :w<CR>

nnoremap <leader>q :q<CR>

nnoremap <leader>e :Ex<CR>
nnoremap <leader>t :tabnew<CR>:Ex<CR>
nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" ==============================================================================
" Plugin settings
" ==============================================================================

" ------------------------------------------------------------------------------
" Gitgutter
" ------------------------------------------------------------------------------

let g:gitgutter_sign_added='++'
let g:gitgutter_sign_modified='**'
let g:gitgutter_sign_removed='--'
let g:gitgutter_sign_removed_first_line='^^'
let g:gitgutter_sign_modified_removed='ww'

" ------------------------------------------------------------------------------
" Vim-test + VTR
" ------------------------------------------------------------------------------

" vim-test maps
map <silent> <leader>t :TestNearest<CR>
map <silent> <leader>f :TestFile<CR>
map <silent> <leader>T :TestSuite<CR>
map <silent> <leader>r :TestLast<CR>
map <silent> <leader>g :TestVisit<CR>

" run tests with :T
let test#strategy = "vtr"

" vtr maps
nnoremap <leader>fr :VtrFocusRunner<CR>
nnoremap <leader>kr :VtrKillRunner<CR>
nnoremap <leader>rr :VtrSendLinesToRunner<CR>
nnoremap <leader>dr :VtrSendCtrlD<CR>
nnoremap <leader>ar :VtrAttachToPane<CR>

" ------------------------------------------------------------------------------
" Lightline
" ------------------------------------------------------------------------------

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'tab': {
      \   'active': [ 'filename' ],
      \   'inactive': [ 'filename' ]
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'filetype', 'fileencoding', 'fileformat' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"HELP":&readonly?"RO":""}'
      \ },
      \ 'component_function': {
      \   'mode': 'utils#lightLineMode',
      \   'filename': 'utils#lightLineFilename',
      \   'filetype': 'utils#lightLineFiletype',
      \   'fileformat': 'utils#lightLineFileformat',
      \   'fileencoding': 'utils#lightLineFileencoding'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&readonly)'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" ------------------------------------------------------------------------------
" Fugitive
" ------------------------------------------------------------------------------

nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gH :Gbrowse<CR>
vnoremap <leader>gH :Gbrowse<CR>

" ------------------------------------------------------------------------------
" NERDTree
" ------------------------------------------------------------------------------

let g:NERDTreeMinimalUI=0
let g:NERDTreeWinSize=40
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowHidden=1
let g:NERDTreeRespectWildIgnore=1
let g:NERDTreeIgnore=['node_modules$[[dir]]']
let g:NERDTreeSortOrder=['\/$','^\.','^[a-z]','^[A-Z]']
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

"not nerd tree
" let g:vimfiler_as_default_explorer = 1

" ------------------------------------------------------------------------------
" FZF
" ------------------------------------------------------------------------------

let g:fzf_layout = { 'down': '~30%'}

nnoremap <leader>o :FZF<CR>
nnoremap <leader>a :Ag<Space>
nnoremap <silent> ,g :call utils#searchCurrentWordWithAg()<CR>

" ------------------------------------------------------------------------------
" GReplace
" ------------------------------------------------------------------------------

set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'

nnoremap <leader><leader>r :Gsearch<cr>

" ------------------------------------------------------------------------------
" BufTabLine
" ------------------------------------------------------------------------------

let g:buftabline_numbers=2

" ------------------------------------------------------------------------------
" BufOnly
" ------------------------------------------------------------------------------

nnoremap ,C :Bonly<CR>

" ------------------------------------------------------------------------------
" Auto Pairs
" ------------------------------------------------------------------------------

let g:AutoPairsFlyMode=1
let g:AutoPairsShortcutBackInsert='<C-v>'

" ------------------------------------------------------------------------------
" Ale
" ------------------------------------------------------------------------------

let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_enter=0

" ------------------------------------------------------------------------------
" Deoplete
" ------------------------------------------------------------------------------

let g:deoplete#enable_at_startup=1
let g:deoplete#max_menu_width=0
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
let g:deoplete#sources = {}
let g:deoplete#sources._ = []
let g:deoplete#file#enable_buffer_path = 1

"""""""""""""""""""""""""
""""  Java Complete  """"
"""""""""""""""""""""""""
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"""""""""""""""""""""""""
""""     neomake     """"
"""""""""""""""""""""""""
" autocmd! BufWritePost,BufEnter * Neomake

"""""""""""""""""""""""""
""""     neoformat   """"
"""""""""""""""""""""""""
" augroup astyle
"   autocmd!
"   autocmd BufWritePre * Neoformat
" augroup END

" ------------------------------------------------------------------------------
" Neoformat
" ------------------------------------------------------------------------------

let g:neoformat_verbose=0
let g:neoformat_try_formatprg=1

" ------------------------------------------------------------------------------
" Polyglot
" ------------------------------------------------------------------------------

let g:javascript_plugin_flow=1

" ------------------------------------------------------------------------------
" LanguageClient
" ------------------------------------------------------------------------------

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'vue': ['vls']
    \ }

let g:LanguageClient_autoStart=1
let g:LanguageClient_selectionUI='fzf'
let g:LanguageClient_diagnosticsEnable=0

" only start lsp when opening php files
au filetype php LanguageClientStart

" use LSP completion on ctrl-x ctrl-o as fallback for padawan in legacy projects
au filetype php set omnifunc=LanguageClient#complete

" no need for diagnostics, we're going to use neomake for that
let g:LanguageClient_diagnosticsEnable  = 0
let g:LanguageClient_signColumnAlwaysOn = 0

" I only use these 3 mappings
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap K :call LanguageClient_textDocument_hover()<cr>
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>

" ------------------------------------------------------------------------------
" CtrlP
" ------------------------------------------------------------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
nnoremap <Leader>p :CtrlPMRUFiles<cr>
" ------------------------------------------------------------------------------
" CloseTag
" ------------------------------------------------------------------------------
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

" ------------------------------------------------------------------------------
" Prettier
" ------------------------------------------------------------------------------
let g:prettier#quickfix_enabled = 0
let g:prettier#config#semi = 'false'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let g:prettier#config#bracket_spacing = 'true'

" ------------------------------------------------------------------------------
" UltiSnips
" ------------------------------------------------------------------------------
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=['~/.config/nvim/plugged/vim-snippets/UltiSnips','~/.config/nvim/plugged/vim-react-snippets/UltiSnips']
let g:UltiSnipsExpandTrigger="<c-l>"


" ------------------------------------------------------------------------------
" PHP-CS-Fixer
" ------------------------------------------------------------------------------
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile() "for auto fixing on save

" ------------------------------------------------------------------------------
" PHP PDV
" ------------------------------------------------------------------------------
let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>


" ------------------------------------------------------------------------------
" Fixmyjs
" ------------------------------------------------------------------------------
noremap <Leader><Leader>f :Fixmyjs<CR>

" ------------------------------------------------------------------------------
" Table Mode
" ------------------------------------------------------------------------------

let g:table_mode_corner='|'

" ==============================================================================
" Autocommands
" ==============================================================================

" Remove trailing whitespaces automatically before save
autocmd BufWritePre * call utils#stripTrailingWhitespaces()

" Resize splits when the window is resized {{{
autocmd VimResized * :wincmd =

" Prettier settings
autocmd FileType javascript setlocal
      \ formatprg=prettier\ --stdin\ --parser=flow\ --single-quote\ --print-width=120\
" MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx': 1,
    \}

" Run checktime in buffers, but avoiding the "Command Line" (q:) window
autocmd CursorHold * if getcmdwintype() == '' | checktime | endif

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
  au!
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Aug autopairs to not auto close on rust's lifetime syntax
augroup vimrc-rust-autopairs
  autocmd!
  autocmd FileType rust let g:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', '`':'`'}
augroup END

set foldmethod=syntax
" set foldlevelstart=1

set foldlevel=99
let javaScript_fold=99         " JavaScript
