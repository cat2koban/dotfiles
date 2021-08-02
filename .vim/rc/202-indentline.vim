UsePlug 'indentLine'

let g:indentLine_fileTypeExclude = ['help', 'startify', 'coc-explorer']

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
