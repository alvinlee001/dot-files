"-------------------------------------------------------------------------------
" @version 2.0
"-------------------------------------------------------------------------------

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
" ------------------------------------------------------------------------------
" Language related plugins
" ------------------------------------------------------------------------------

" Automatically closing pair stuff
Plug 'jiangmiao/auto-pairs'
" Commenting support (gc)
Plug 'tpope/vim-commentary'
" CamelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'
" Heuristically set indent settings
Plug 'tpope/vim-sleuth'
" Highlighting for all
Plug 'sheerun/vim-polyglot'
" Replace selection with paste
Plug 'vim-scripts/ReplaceWithRegister'
" Split - Join multilines
Plug 'AndrewRadev/splitjoin.vim'
" Easymotion
Plug 'easymotion/vim-easymotion'
" Neoformat
Plug 'sbdchd/neoformat'
" Ale (Linting Engine)
Plug 'w0rp/ale'
" Snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tomtom/tlib_vim'
" Editorconfig
Plug 'editorconfig/editorconfig-vim'
" Emmet
Plug 'mattn/emmet-vim'


" ------------------------------------------------------------------------------
" Productivity plugins
" ------------------------------------------------------------------------------

" Running tests with different ganularities
Plug 'janko-m/vim-test'
" VTR
Plug 'christoomey/vim-tmux-runner'
" Git commit message
Plug 'rhysd/committia.vim'

" ------------------------------------------------------------------------------
" Fuzzy searcher
" ------------------------------------------------------------------------------

" fzf binding
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" ------------------------------------------------------------------------------
" Interface uplift
" ------------------------------------------------------------------------------

" Nerdtree file browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
" Lightline
Plug 'itchyny/lightline.vim'
" Buffers tabline
Plug 'ap/vim-buftabline'
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" ------------------------------------------------------------------------------
" Colorschemes
" ------------------------------------------------------------------------------

Plug 'tyrannicaltoucan/vim-deep-space'

" ------------------------------------------------------------------------------
" Utilities
" ------------------------------------------------------------------------------

" Delete all but current buffer
Plug 'vim-scripts/BufOnly.vim', { 'on': 'Bonly' }
" Intelligent buffer closing
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
" Fugitive
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" Surround (cs"')
Plug 'tpope/vim-surround'
" Matchit enhances jump motion
Plug 'tmhedberg/matchit'
" vim + tmux clipboard
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'
" Gitgutterz
Plug 'airblade/vim-gitgutter'
" Multiple cursors
Plug 'terryma/vim-multiple-cursors'
" Tagbar
Plug 'majutsushi/tagbar'
" Better start
Plug 'mhinz/vim-startify'
" Vimwiki
Plug 'vimwiki/vimwiki'

call plug#end()

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" END-OF-PLUG
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" ==============================================================================
" Basic settings
" ==============================================================================

set shell=/bin/zsh        " Setting shell to zsh
set number                " Line numbers on
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
set scrolloff=5           " Scroll when closing to top or bottom of the screen
set updatetime=1000       " Update time used to create swap file or other things
set suffixesadd+=.js,.rb  " Add js and ruby files to suffixes
set synmaxcol=160         " Don't try to syntax highlight minified files
set nowrap                " Don't wrap lines
set expandtab             " Use space characters in place of tab characters
set softtabstop=2         " Two spaces soft tab stop
set shiftwidth=2          " Two spaces when indenting
set signcolumn=yes        " Always show signcolumns

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
" Colorscheme + Highlighting settings
" ==============================================================================

syntax on
set background=dark
colorscheme deep-space

" ==============================================================================
" Mappings
" ==============================================================================

" ------------------------------------------------------------------------------
" Leader
" ------------------------------------------------------------------------------

let g:mapleader="\<space>"
let maplocalleader = ","

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

" When jump to next match also center screen
nnoremap <silent> n :norm! nzz<CR>
nnoremap <silent> N :norm! Nzz<CR>
vnoremap <silent> n :norm! nzz<CR>
vnoremap <silent> N :norm! Nzz<CR>

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

" Use CamelCaseMotion instead of default motions
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

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

" ------------------------------------------------------------------------------
" F-key actions
" ------------------------------------------------------------------------------

" NERDTree wrapper
nnoremap <silent> <F1> :call utils#nerdWrapper()<CR>
" Tagbar
nnoremap <silent> <F2> :TagbarToggle<CR>
" Fmt
nnoremap <silent> <F3> :call utils#toggleFmt()<CR>
" Toggle pastemode
nnoremap <silent> <F4> :set paste!<CR> :set nopaste?<CR>
" Source (reload configuration)
nnoremap <silent> <F5> :source $MYNVIMRC<CR>
" Toggle search highlight
nnoremap <silent> <F6> :set nohlsearch!<CR> :set nohlsearch?<CR>
" Toggle white characters visibility
nnoremap <silent> <F7> :set list!<CR> :set list?<CR>
" New term buffer
nnoremap <silent> <F8> :terminal<CR>
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

" ==============================================================================
" Plugin settings
" ==============================================================================

" ------------------------------------------------------------------------------
" Gitgutter
" ------------------------------------------------------------------------------

let g:gitgutter_sign_added = 'xx'
let g:gitgutter_sign_modified = 'yy'
let g:gitgutter_sign_removed = 'zz'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'

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
      \ 'colorscheme': 'Dracula',
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

let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSize=40
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowHidden=1
let g:NERDTreeHighlightCursorline=0
let g:NERDTreeRespectWildIgnore=1
let g:NERDTreeIgnore=['node_modules$[[dir]]']
let g:NERDTreeSortOrder=['\/$','^\.','^[a-z]','^[A-Z]']

" ------------------------------------------------------------------------------
" FZF
" ------------------------------------------------------------------------------

let g:fzf_layout = { 'down': '~30%'}

nnoremap <leader>o :FZF<CR>
nnoremap <leader>gg :Ag<Space>
nnoremap <silent> ,g :call utils#searchCurrentWordWithAg()<CR>

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
" Vimwiki
" ------------------------------------------------------------------------------

let g:vimwiki_list = [{
    \ 'path': '~/.vimwiki/',
    \ 'diary_rel_path': 'journal/',
    \ 'diary_index': 'journal' }]

" ------------------------------------------------------------------------------
" Deoplete
" ------------------------------------------------------------------------------

let g:deoplete#enable_at_startup = 1

" ------------------------------------------------------------------------------
" Neoformat
" ------------------------------------------------------------------------------
let g:neoformat_verbose = 0
let g:neoformat_try_formatprg = 1

" Prettier settings
autocmd FileType javascript setlocal
      \ formatprg=prettier\ --stdin\ --parser=flow\ --single-quote\ --print-width=120\

" ------------------------------------------------------------------------------
" Polyglot
" ------------------------------------------------------------------------------
"
let g:javascript_plugin_flow = 1

" ==============================================================================
" Autocommands
" ==============================================================================

" Remove trailing whitespaces automatically before save
autocmd BufWritePre * call utils#stripTrailingWhitespaces()

" Resize splits when the window is resized {{{
autocmd VimResized * :wincmd =

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
  au!
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Run checktime in buffers, but avoiding the "Command Line" (q:) window
autocmd CursorHold * if getcmdwintype() == '' | checktime | endif

" Aug autopairs to not auto close on rust's lifetime syntax
augroup vimrc-rust-autopairs
  autocmd!
  autocmd FileType rust let g:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', '`':'`'}
augroup END
