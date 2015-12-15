" ============================================================================
" FILE: exts.vim
" AUTHOR: koturn <jeak.koutan.apple@gmail.com>
" DESCRIPTION: {{{
" Sample extension plugin
" }}}
" ============================================================================
let s:save_cpo = &cpo
set cpo&vim


function! fzf#exts#option() abort
  return {
        \ 'down': 20,
        \ 'sink': function('s:sink'),
        \ 'source': s:gather_candidates()
        \}
endfunction

function! s:gather_candidates() abort
  return ['apple', 'banana', 'cake']
endfunction

function! s:sink(candidate) abort
  echomsg a:candidate
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
