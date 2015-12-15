" ============================================================================
" FILE: exts.vim
" AUTHOR: koturn <jeak.koutan.apple@gmail.com>
" DESCRIPTION: {{{
" Sample extension plugin
" }}}
" ============================================================================
let s:save_cpo = &cpo
set cpo&vim


let s:define = {'name': 'exts'}

function! milqi#exts#define() abort
  return s:define
endfunction

function! s:define.init(context) abort
  " let context.i = 0
  return ['apple', 'banana', 'cake']
endfunction

function! s:define.accept(context, candidate) abort
  call milqi#exit()
  echomsg a:candidate
endfunction

" function! s:define.lazy_init(context, query) abort
"   let a:context.i += 1
"   if query ==# ''
"     return {
"           \ 'reset': 0,
"           \ 'candidates': map(['lazy_apple', 'lazy_banana', 'lazy_cake'],
"           \   'v:val . " - " . a:context.i')
"           \}
"   else
"     return {
"           \ 'reset': 1,
"           \ 'candidates': ['apple_query', 'banana_query', 'cake_query']
"           \}
"   endif
" endfunction

" function! s:define.async_init(context) abort
"   let a:context.i += 1
"   return {
"         \ 'done': a:context.i < 6 ? 0 : 1,
"         \ 'candidates': map(['async_apple', 'async_banana', 'async_cake'],
"         \   'v:val . " - " . a:context.i')
"         \}
" endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
