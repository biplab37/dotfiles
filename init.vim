set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp' : 'vim'}
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'chrisbra/unicode.vim'
"Plug 'vim-pandoc/vim-pandoc'

call plug#end()

colorscheme nord
let g:lightline={'colorscheme':'onehalfdark'}

set guifont=FiraCode
set tabstop=4
set shiftwidth=4
set wrap
set number
set relativenumber
set splitright splitbelow
set cursorline
set mouse=a
set wildmenu
set showmatch

set laststatus=2
set noshowmode

set incsearch
set hlsearch
set noswapfile

filetype indent on

set conceallevel=0

let g:vim_markdown_folding_disabled = 1

let g:pandoc#folding#fdc=0
let g:pandoc#folding#level=1

let g:pandoc#syntax#conceal#use=0

set omnifunc=syntaxcomplete#Complete

map <C-f> :NERDTreeToggle<CR> 

"highlight MyGroup cterm=bold
"match MyGroup /./

" Bubble single line in normal mode
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines in visual mode
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

nmap <F5> :set relativenumber! number! showmode! showcmd! hidden! ruler!<CR>

source /usr/share/doc/fzf/examples/fzf.vim

