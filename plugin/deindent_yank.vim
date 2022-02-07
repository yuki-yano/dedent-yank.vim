if !exists('g:deindent_yank_disable_default_mappings')
  let g:deindent_yank_disable_default_mappings = v:false
endif

nnoremap <Plug>(deindent-normal-yank) <Cmd>call deindent_yank#normal_yank()<CR>
xnoremap <Plug>(deindent-visual-yank) <Esc><Cmd>call deindent_yank#visual_yank()<CR>

if !g:deindent_yank_disable_default_mappings
  nmap gy <Plug>(deindent-normal-yank)
  xmap gy <Plug>(deindent-visual-yank)
endif
