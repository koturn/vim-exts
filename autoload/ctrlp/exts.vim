" ============================================================================
" FILE: exts.vim
" AUTHOR: koturn <jeak.koutan.apple@gmail.com>
" DESCRIPTION: {{{
" Sample extension plugin
" }}}
" ============================================================================
if get(g:, 'loaded_ctrlp_exts', 0)
  finish
endif
let g:loaded_ctrlp_exts = 1
let s:save_cpo = &cpo
set cpo&vim

let s:ctrlp_builtins = ctrlp#getvar('g:ctrlp_builtins')

function! s:get_sid_prefix() abort
  return matchstr(expand('<sfile>'), '^function \zs<SNR>\d\+_\zeget_sid_prefix$')
endfunction
let s:sid_prefix = s:get_sid_prefix()
delfunction s:get_sid_prefix

let g:ctrlp_ext_var = add(get(g:, 'ctrlp_ext_vars', []), {
      \ 'init': s:sid_prefix . 'init()',
      \ 'accept': s:sid_prefix . 'accept',
      \ 'lname': 'exts',
      \ 'sname': 'exts',
      \ 'type': 'line',
      \ 'nolim': 1
      \})
let s:id = s:ctrlp_builtins + len(g:ctrlp_ext_vars)
unlet s:ctrlp_builtins s:sid_prefix


function! ctrlp#exts#id() abort
  return s:id
endfunction


function! s:init() abort
  return ['apple', 'banana', 'cake']
endfunction

function! s:accept(mode, str) abort
  call ctrlp#exit()
  echomsg a:str
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
