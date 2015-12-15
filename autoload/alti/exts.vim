" ============================================================================
" FILE: exts.vim
" AUTHOR: koturn <jeak.koutan.apple@gmail.com>
" DESCRIPTION: {{{
" Sample extension plugin
" }}}
" ============================================================================
let s:save_cpo = &cpo
set cpo&vim

function! s:get_sid_prefix() abort
  return matchstr(expand('<sfile>'), '^function \zs<SNR>\d\+_\zeget_sid_prefix$')
endfunction
let s:sid_prefix = s:get_sid_prefix()
delfunction s:get_sid_prefix

let s:define = {
      \ 'name': 'exts',
      \ 'cmpl': s:sid_prefix . 'cmpl',
      \ 'prompt': s:sid_prefix . 'prompt',
      \ 'submitted': s:sid_prefix . 'submitted'
      \}
unlet s:sid_prefix

function! alti#exts#define() abort
  return s:define
endfunction


function! s:cmpl(context) abort
  return a:context.filtered(['apple', 'banana', 'cake'])
endfunction

function! s:prompt(context) abort
  return 'exts> '
endfunction

function! s:submitted(context, line) abort
  if len(a:context.inputs) == 0
    echomsg a:context.selection
  else
    for input in a:context.inputs
      echomsg input
    endfor
  endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
