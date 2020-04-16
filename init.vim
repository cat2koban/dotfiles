" プラグイン ---------------------------------------------------

" ~/.vim/plugged にプラグインを配置
call plug#begin('~/.vim/plugged')

" 何のプラグインを使うか書いていく
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'

" - ここまで -
call plug#end()


" 基本設定 ------------------------------------------------------
" 文字コード
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

" シンタックスを有効に
syntax enable

" Ctrl-h で delete
set backspace=2

" カーソルライン
set cursorline

" 行番号
set number
set relativenumber

" 検索
set hlsearch
set ignorecase
set smartcase
set incsearch

" タブ
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

" NERDTree プラグイン用の設定
nnoremap <silent> <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" インデント可視化
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green  ctermbg=4




