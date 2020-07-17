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
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'neomake/neomake'
call plug#end()

"Plugin settings
let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('nrwi', 500)

"Mapping
map <C-n> :NERDTreeToggle<CR>

"Colorscheme
highlight LineNr ctermfg=11
highlight PreProc ctermfg=12
highlight Statement ctermfg=12
highlight texMath ctermfg=220
highlight Number ctermfg=220
highlight texBeginEndName ctermfg=213
highlight SpellCap ctermbg=13
highlight NeomakeVirtualtextWarning ctermfg=13
