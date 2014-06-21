scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:source = {
\	"name" : "unite_candidate_sorter",
\	"default_action" : "sort",
\	"action_table" : {
\		"sort" : {
\			'description' : 'sort candidates',
\			'is_quit' : 0,
\		},
\	},
\}


function! s:source.action_table.sort.func(candidate)
	execute "normal \<Plug>(unite_exit)"
	call unite#mappings#set_current_filters(a:candidate.action__sorters)
	execute "normal \<Plug>(unite_redraw)"
endfunction


function! s:source.gather_candidates(args, context)
	let sorter = [
\		"default",
\		"default",
\		"nothing",
\		"nothing",
\		"word",
\		"word",
\		"length",
\		"length",
\		"ftime",
\		"ftime",
\		"rank",
\		"rank",
\		"selecta",
\		"selecta",
\	]
	return map(copy(sorter), '{
\		"word" : v:key % 2 == 0 ?  v:val : toupper(v:val),
\		"default_action" : [],
\		"action__sorters" : v:key % 2 == 0 ? ["sorter_" . v:val] : ["sorter_" . v:val, "sorter_reverse"]
\	}')
endfunction


function! unite#sources#unite_candidate_sorter#define()
	return s:source
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
