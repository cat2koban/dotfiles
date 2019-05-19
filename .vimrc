set number
syntax on
set background=dark
let g:solarized_termcolors=256

" cusorline
set cursorline

"tab
set tabstop=4

" search
set incsearch
set ignorecase
set smartcase
set hlsearch

" 改行時に自動で字下げしてくれる
set autoindent

" コマンド補完
set wildmenu
set history=500


"マウスのホイール機能の有効化
set mouse=a

inoremap jj <ESC>

if filereadable(expand('~/.deinrc'))
  source ~/.deinrc
endif
