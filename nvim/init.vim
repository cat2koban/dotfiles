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
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'previm/previm'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-endwise'

call plug#end()

" ---------------------------------------------------------------
" >> 基本設定                                                 {{{
" ---------------------------------------------------------------

"" 文字コード
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis


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
nnoremap gr :tabprevious<CR>


" <Leader> の設定
let mapleader = ","


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


" ---------------------------------------------------------------
" プラグイン固有の設定                                        {{{
" ---------------------------------------------------------------


" ---------------------------------------------------------------
" >> NERDTree
" ---------------------------------------------------------------
nnoremap <silent> <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


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

" navigate completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" ---------------------------------------------------------------
" プラグイン固有の設定                                        }}}
" ---------------------------------------------------------------
