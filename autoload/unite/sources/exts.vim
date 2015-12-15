" ============================================================================
" FILE: exts.vim
" AUTHOR: koturn <jeak.koutan.apple@gmail.com>
" DESCRIPTION: {{{
" Sample extension plugin
" }}}
" ============================================================================
let s:save_cpo = &cpo
set cpo&vim


let s:source = {
      \ 'name': 'exts',
      \ 'description': 'descriptions',
      \ 'action_table': {},
      \ 'default_action': 'my_action'
      \}

let s:source.action_table.my_action = {
      \ 'description': 'echo selected candidate'
      \}
function! s:source.action_table.my_action.func(candidate) abort
  echomsg string(a:candidate.word)
endfunction

function! s:source.gather_candidates(args, context) abort
  return map(['apple', 'banana', 'cake'], '{
        \ "word": v:val
        \}')
endfunction


function! unite#sources#exts#define() abort
  return s:source
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
