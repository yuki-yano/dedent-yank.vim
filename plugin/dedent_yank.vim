if !exists('g:dedent_yank_disable_default_mappings')
  let g:dedent_yank_disable_default_mappings = v:false
endif

nnoremap <Plug>(dedent-yank-normal) <Cmd>call dedent_yank#normal_yank()<CR>
xnoremap <Plug>(dedent-yank-visual) <Esc><Cmd>call dedent_yank#visual_yank()<CR>

if !g:dedent_yank_disable_default_mappings
  nmap gy <Plug>(dedent-yank-normal)
  xmap gy <Plug>(dedent-yank-visual)
endif
