function! deindent_yank#normal_yank() abort
  normal! yy
  let content = getreg(v:register, 1)
  let leading = len(matchstr(content, '^\s*'))
  call setreg(v:register, content[leading :], getregtype(v:register))
endfunction

function! deindent_yank#visual_yank() abort
  normal! gvy
  let content = getreg(v:register, 1, v:true)
  let leading = min(map(filter(copy(content), { _, v -> len(v) != 0 }), { _, v -> len(matchstr(v, '^\s*')) }))
  call map(content, { _, v -> v[leading :] })
  call setreg(v:register, content, getregtype(v:register))
endfunction
