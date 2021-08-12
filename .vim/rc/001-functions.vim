function! s:path2project_directory_git(path) abort
  let parent = a:path

  while 1
    let path = parent . '/.git'
    if isdirectory(path) || filereadable(path)
      return parent
    endif
    let next = fnamemodify(parent, ':h')
    if next == parent
      return ''
    endif
    let parent = next
  endwhile
endfunction

function! s:fetch_absolute_path()
  let @+ = expand('%:p')
endfunction

function! s:copy_absolute_path()
  call s:fetch_absolute_path()
  echo 'Copy absolute path: ' . @+
endfunction

function! s:copy_relative_path_from_root()
  call s:fetch_absolute_path()
  let git_root = s:path2project_directory_git(@+)
  let @+ = substitute(@+, git_root, '.', 'g')
  echo 'Copy relative path: ' . @+
endfunction

nmap cp :call <SID>copy_absolute_path()<CR>
nmap cpr :call <SID>copy_relative_path_from_root()<CR>
