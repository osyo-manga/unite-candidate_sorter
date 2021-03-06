scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! unite#kinds#candidate_sorter#define()
	return {}
endfunction


let s:action = {
\	'description' : 'start unite-candidate_sorter',
\	"is_quit" : 0,
\ }
function! s:action.func(candidates)
	let name = "unite_candidate_sorter"
	call unite#start_temporary([name])
endfunction


call unite#custom_action('common', 'unite_candidate_sorter', s:action)
unlet s:action


function! unite#kinds#candidate_sorter#mapping()
	return unite#do_action('unite_candidate_sorter')
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
