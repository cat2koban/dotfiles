" プラグインの追加/削除 ----------------------------------------
" ~/.vim/plugged にプラグインを配置される
"
" インストール後 に以下のコマンドを command line mode から実行
" source ~/.config/nvim/init.vim
" :PlugInstall
"
" プラグインの削除の際は
" Plug 'cat2koban/awesome-plug.vim' を削除して、
" source ~/.config/nvim/init.vim
" :PlugClean

call plug#begin('~/.vim/plugged')

" 何のプラグインを使うか書いていく
" display  ----------------------------
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'itchyny/calendar.vim'

" markdown -----------------------------
Plug 'junegunn/goyo.vim'
Plug 'previm/previm'

" coding ------------------------------
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'w0rp/ale'
Plug 'slim-template/vim-slim'
Plug 'thinca/vim-quickrun'
Plug 'dhruvasagar/vim-table-mode'

" git ---------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" fuzzy finder ------------------------
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" ---------------------------------------------------------------
" >> 基本設定                                                 {{{
" ---------------------------------------------------------------

"" 文字コード
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set binary noeol
"" 行末スペース
autocmd BufWritePre * :%s/\s\+$//ge


set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%


"" シンタックスを有効に
syntax enable


"" Ctrl-h で delete
set backspace=2


"" カーソルライン
set cursorline


"" 行番号
set number
set relativenumber


"" 検索
set hlsearch
set ignorecase
set smartcase
set incsearch


"" タブ
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab


" インデント
set smartindent


" Undo / Redo 履歴の保存
if has('persistent_undo')
	let undo_path = expand('~/.vim/undo')
	exe 'set undodir=' . undo_path
	set undofile
endif


" マッピング / 再帰なし
inoremap <silent> jj <ESC>


" マッピング / 再帰
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>
nnoremap <C-N> :tabnew<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>w :w<CR>


" <Leader> の設定
let mapleader = "\<Space>"


" ヤンクしたものをクリップボードに
set clipboard+=unnamed


" タブページ
set showtabline=2


" ステータスライン
set laststatus=2


" .swp を作りたくない
set noswapfile


" 短形選択
set virtualedit=block


" コマンドラインモードでの補完候補表示
set wildmenu


" マウス
set mouse=a


" 行末の空白を削除
autocmd BufWritePre * :%s/\s\+$//ge

" terminal mode のシェル
set sh=fish

" terminal mode -> command mode
tnoremap <silent> <ESC> <C-\><C-n>

" ---------------------------------------------------------------
" プラグイン固有の設定                                        {{{
" ---------------------------------------------------------------


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
" >> neo-snippet.nvim
" ---------------------------------------------------------------
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


" ---------------------------------------------------------------
" >> startify
" ---------------------------------------------------------------
" [$ vi ] と fish で入力すると, startify が起動
" ref: https://github.com/mhinz/vim-startify/blob/master/doc/startify.txt#L309
let g:startify_session_autoload = 1

" Ctrl + S で :Startify を起動
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
nnoremap <C-g> :Rg<CR>



" ---------------------------------------------------------------
" プラグイン固有の設定                                        }}}
" ---------------------------------------------------------------