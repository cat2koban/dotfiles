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
set autoindent

" Undo / Redo 履歴の保存
if has('persistent_undo')
	let undo_path = expand('~/.vim/undo')
	exe 'set undodir=' . undo_path
	set undofile
endif

" マップ / 再帰なし
inoremap <silent> jj <ESC>

" マップ / 再帰
nnoremap <C-a> 0
nnoremap <C-e> $
nnoremap <ESC><ESC> :nohlsearch<CR>

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

" プラグイン -----------------------------
