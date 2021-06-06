" ---------------------------------------------------------------
" Basic                                                       {{{
" ---------------------------------------------------------------

syntax on

" Charset
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" Enable delete line by <C-h>
set backspace=2

set cursorline

" Enable number of line
set number
set relativenumber

" Searching
set hlsearch
set ignorecase
set smartcase
set incsearch
nnoremap <ESC><ESC> :nohlsearch<CR>

" Tab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set showtabline=2

" Indent
set smartindent

" Enable yanked line to clipboard
set clipboard+=unnamed

set laststatus=2

" Disable auto create .swp file
set noswapfile

" Remove white space end of line
autocmd BufWritePre * :%s/\s\+$//ge

set virtualedit=block

" Enable displaying complemention code when command mode.
set wildmenu

" Enable using mouse
set mouse=a

" Set fish terminal when terminal mode
set sh=fish

inoremap <silent> jj <ESC>

nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>
nnoremap <C-N> :tabnew<CR>

" terminal mode -> command mode
tnoremap <silent> <ESC> <C-\><C-n>

" Set <Leader>
let mapleader = "\<Space>"

" Enable saving history for Undo / Redo procedure
if has('persistent_undo')
	let undo_path = expand('~/.vim/undo')
	exe 'set undodir=' . undo_path
	set undofile
endif
" ---------------------------------------------------------------
" Basic                                                       }}}
" ---------------------------------------------------------------



" ---------------------------------------------------------------
" Plugins                                                     {{{
" ---------------------------------------------------------------

call plug#begin('~/.vim/plugged')

" Display  ----------------------------
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'

" Markdown ----------------------------
Plug 'junegunn/goyo.vim'
Plug 'previm/previm'

" Coding ------------------------------
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'slim-template/vim-slim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'cohama/lexima.vim'

" Git ---------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-jp/vital.vim'

" Fuzzy finder ------------------------
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'cat2koban/ghlink.vim'

call plug#end()




" ---------------------------------------------------------------
" >> NERDTree
" ---------------------------------------------------------------
nnoremap <silent> <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.git$', '\.clean$', '\.swp$', '\.bak$', '\~$']
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber


" ---------------------------------------------------------------
" >> Previm
" ---------------------------------------------------------------
let g:previm_open_cmd = 'open -a Google\ Chrome'


" ---------------------------------------------------------------
" >> coc.nvim
" ---------------------------------------------------------------
" Node Path
let g:coc_node_path = '/Users/cat2koban/.nvm/versions/node/v15.7.0/bin/node'

" Error Message Forground Color
hi CocErrorFloat ctermfg=black
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics


" ---------------------------------------------------------------
" >> Startify
" ---------------------------------------------------------------
" Enable Open Startify when enter `vi` on fish
" ref: https://github.com/mhinz/vim-startify/blob/master/doc/startify.txt#L309
let g:startify_session_autoload = 1

" Enable open Startify when <C-S>
nnoremap <C-s> :Startify<CR>

" ref: http://mewbies.com/acute_terminal_fun_01_get_ascii-fied_on_the_terminal.htm
" ref: https://github.com/ascii-boxes/boxes/blob/master/boxes-config
let g:startify_custom_header = ([
\'                         \\\///                         ',
\'                        / _  _ \                        ',
\'                      (| (.)(.) |)                      ',
\' +------------------.OOOo--()--oOOO.------------------+ ',
\' |               __ ___   __         __               | ',
\' |   _________ _/ /|__ \ / /______  / /_  ____ _____  | ',
\' |  / ___/ __ `/ __/_/ // //_/ __ \/ __ \/ __ `/ __ \ | ',
\' | / /__/ /_/ / /_/ __// ,< / /_/ / /_/ / /_/ / / / / | ',
\' | \___/\__,_/\__/____/_/|_|\____/_.___/\__,_/_/ /_/  | ',
\' |                   _   __                __         | ',
\' |                  / | / /__  ____ _   __/_/___ ___  | ',
\' |                 /  |/ / _ \/ __ \ | / / / __ `__ \ | ',
\' |                / /|  /  __/ /_/ / |/ / / / / / / / | ',
\' |               /_/ |_/\___/\____/|___/_/_/ /_/ /_/  | ',
\' |                                                    | ',
\' +------------------.oooO-----------------------------+ ',
\'                    (   )   Oooo.                       ',
\'                     \ (    (   )                       ',
\'                      \_)    ) /                        ',
\'                            (_/                         ',
\'',
\])


" ---------------------------------------------------------------
" >> ale
" ---------------------------------------------------------------
let g:ale_fixers = { 'ruby': ['rubocop'] }
let g:ale_set_highlights = 0


" ---------------------------------------------------------------
" >> fzf
" ---------------------------------------------------------------
nnoremap <C-F> :FZF<CR>
nnoremap <C-G> :Rg<CR>


" ---------------------------------------------------------------
" >> indentLine
" ---------------------------------------------------------------
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'startify']

function! My_mapping()
  if pumvisible() && complete_info()["selected"] == -1
    return "\<C-y>\<CR>"
  elseif pumvisible()
    return coc#_select_confirm()
  else
    return "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  endif
endfunction
let g:endwise_no_mappings = v:true
inoremap <expr> <Plug>CustomCocCR My_mapping()
imap <CR> <Plug>CustomCocCR<Plug>DiscretionaryEnd

" ---------------------------------------------------------------
" Plugins                                                     }}}
" ---------------------------------------------------------------
