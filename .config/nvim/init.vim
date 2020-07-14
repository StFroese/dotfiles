set encoding=UTF-8
set autoindent
set expandtab
set smarttab
set tabstop=4
syntax on
set laststatus=2
set ruler
set wildmenu
set number
let g:tex_conceal = ""

" Status-line
set statusline=
set statusline+=%#PMenu#
set statusline+=\ %y
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#CoursorColumn#
set statusline+=\ [%l/%L]
set statusline+=\ [%p%%]

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'lervag/vimtex'

call plug#end()

"Mapping
map <C-n> :NERDTreeToggle<CR>
