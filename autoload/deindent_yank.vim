function! deindent_yank#normal_yank() abort
  execute 'normal!' v:count . 'yy'
  call s:deindent()
endfunction

function! deindent_yank#visual_yank() abort
  normal! gvy
  call s:deindent()
endfunction

function! s:deindent() abort
  let content = getreg(v:register, 1, v:true)
  let leading = min(map(filter(copy(content), { _, v -> len(v) != 0 }), { _, v -> len(matchstr(v, '^\s*')) }))
  call map(content, { _, v -> v[leading :] })
  call setreg(v:register, content, getregtype(v:register))
endfunction
