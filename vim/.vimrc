"  => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" More levels for undo
set undolevels=150

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" => Colors 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colors evening
set background=dark


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" => gVim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Monospace\ 12
  endif
endif  
set mouse=a
set number

" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

