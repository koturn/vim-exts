" ============================================================================
" FILE: exts.vim
" AUTHOR: koturn <jeak.koutan.apple@gmail.com>
" DESCRIPTION: {{{
" Sample extension plugin
" }}}
" ============================================================================
if exists('g:loaded_exts')
  finish
endif
let g:loaded_exts = 1
let s:save_cpo = &cpo
set cpo&vim


command! CtrlPExts  call ctrlp#init(ctrlp#exts#id())
command! FZFExts  call fzf#run(fzf#exts#option())
command! AltiExts  call alti#init(alti#exts#define())
command! MilqiExts  call milqi#candidate_first(milqi#exts#define())
" command! MilqiExts  call milqi#query_first(milqi#exts#define())


let &cpo = s:save_cpo
unlet s:save_cpo
