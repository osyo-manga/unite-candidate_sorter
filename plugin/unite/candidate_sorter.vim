scriptencoding utf-8
if exists('g:loaded_unite_candidate_sorter')
  finish
endif
let g:loaded_unite_candidate_sorter = 1

let s:save_cpo = &cpo
set cpo&vim


nnoremap <silent><expr> <Plug>(unite-candidate_sort) unite#kinds#candidate_sorter#mapping()


let &cpo = s:save_cpo
unlet s:save_cpo
