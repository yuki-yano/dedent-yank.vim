if !exists('g:deindent_yank_disable_default_mappings')
  let g:deindent_yank_disable_default_mappings = v:false
endif

nnoremap <Plug>(deindent-yank-normal) <Cmd>call deindent_yank#normal_yank()<CR>
xnoremap <Plug>(deindent-yank-visual) <Esc><Cmd>call deindent_yank#visual_yank()<CR>

if !g:deindent_yank_disable_default_mappings
  nmap gy <Plug>(deindent-yank-normal)
  xmap gy <Plug>(deindent-yank-visual)
endif
