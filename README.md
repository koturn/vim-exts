vim-exts
========

Sample extension plugin.


## Installation

With [NeoBundle](https://github.com/Shougo/neobundle.vim).

```vim
NeoBundle 'koturn/vim-exts', {
      \ 'depends': [
      \   'Shougo/unite.vim',
      \   'ctrlpvim/ctrlp.vim',
      \   'LeafCage/alti.vim',
      \   'kamichidu/vim-milqi'
      \ ]
      \}
```

If you want to use `:NeoBundleLazy`, write following code in your .vimrc.

```vim
NeoBundleLazy 'koturn/vim-exts'
if neobundle#tap('vim-exts')
  call neobundle#config({
        \ 'depends': [
        \   'Shougo/unite.vim',
        \   'ctrlpvim/ctrlp.vim',
        \   'LeafCage/alti.vim',
        \   'kamichidu/vim-milqi'
        \ ],
        \ 'autoload': {
        \   'commands': [
        \     'CtrlPExts',
        \     'AltiExts',
        \     'MilqiExts',
        \     'FZFExts'
        \   ],
        \   'unite_sources': 'exts'
        \ }
        \})
  call neobundle#untap()
endif
```

With [Vundle](https://github.com/VundleVim/Vundle.vim).

```vim
Plugin 'koturn/vim-exts'
```

With [vim-plug](https://github.com/junegunn/vim-plug).

```vim
Plug 'koturn/vim-exts'
```

If you don't want to use plugin manager, put files and directories on
`~/.vim/`, or `%HOME%/vimfiles/` on Windows.


## Dependent plugins

### Required

- [Shougo/unite.vim](https://github.com/Shougo/unite.vim)
- [ctrlpvim/ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
- [LeafCage/alti.vim](https://github.com/LeafCage/alti.vim)
- [kamichidu/vim-milqi](https://github.com/kamichidu/vim-milqi)
- [junegunn/fzf](https://github.com/junegunn/fzf)


## LICENSE

This software is released under the MIT License, see [LICENSE](LICENSE).
