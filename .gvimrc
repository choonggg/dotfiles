set background=dark

" colorscheme codeschool
" colorscheme onedark

" set lines=999 columns=9999
let mapleader=","

" set guioptions=r
" set guioptions+=R
" set guioptions+=l
" set guioptions+=L

" turn off scrollbar
set guioptions-=L
set guioptions-=r
set guioptions-=T
set scroll=30

" To enable the saving and restoring of screen positions.
let g:screen_size_restore_pos = 1

" To save and restore screen for each Vim instance.
" This is useful if you routinely run more than one Vim instance.
" For all Vim to use the same settings, change this to 0.
let g:screen_size_by_vim_instance = 1

set wildignore+=*/node_modules/*,*.so,*.swp,*.zip,*/bower_components/*

if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  " noremap <C-Tab> :tabnext<CR>
  " noremap <C-S-Tab> :tabprev<CR>
  noremap <D-Left> :tabprev<CR>
  noremap <D-Right> :tabnext<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif
