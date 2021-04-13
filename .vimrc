set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'Yggdroot/indentline'
Plugin 'xolox/vim-misc'
Plugin 'junegunn/fzf'
Plugin 'vim-latex/vim-latex'
Plugin 'JuliaEditorSupport/julia-vim'
"Plugin 'gabrielelana/vim-markdown'
Plugin 'morhetz/gruvbox'
Plugin 'sonph/onehalf', {'rtp' : 'vim'}
Plugin 'arcticicestudio/nord-vim'
Plugin 'rakr/vim-one'
"Plugin 'vimwiki/vimwiki'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'preservim/nerdcommenter'
Plugin 'chrisbra/unicode.vim'
Plugin 'vim-pandoc/vim-pandoc'
"Plugin 'vim-pandoc/vim-pandoc-syntax'

call vundle#end()
filetype plugin indent on

colorscheme onehalfdark
set bg=dark
" let g:gruvbox_contrast_dark='soft'

set mouse=a
" Bubble single line in normal mode
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines in visual mode
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

nmap <F5> :set relativenumber! number! showmode! showcmd! hidden! ruler!<CR>

nmap <C-m> :.!toilet -w 200 -f term -F border<CR>

set tabstop=4
set wrap
set number
set relativenumber

set showcmd
set cursorline
filetype indent on

set wildmenu
set showmatch

set laststatus=2
set noshowmode

set incsearch
set hlsearch
set noswapfile

set conceallevel=0

let g:lightline={'colorscheme':'onehalfdark'}

let g:vim_markdown_folding_disabled = 1

let g:pandoc#folding#fdc=0
let g:pandoc#folding#level=1

let g:pandoc#syntax#conceal#use=0

let g:pandoc#biblio#bibs = ["/home/biplab/Documents/bibfile/papers.bib"]

set splitright splitbelow

set omnifunc=syntaxcomplete#Complete

map <C-f> :NERDTreeToggle<CR> 
highlight MyGroup cterm=bold
match MyGroup /./

source /usr/share/doc/fzf/examples/fzf.vim
