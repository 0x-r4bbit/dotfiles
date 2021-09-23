let mapleader = ','
let maplocalleader = ','

let g:ale_linters = {'rust': ['analyzer']}

scriptencoding utf-8
set encoding=utf-8
set mouse=
set modelines=0
set backspace=indent,eol,start
set autoread

set nocompatible

set complete+=kspell

set history=1000
set undolevels=1000
set undoreload=10000

set ttyfast
set nospell
set hidden
set magic

set nobackup
set nowritebackup
set noswapfile

set lazyredraw
set whichwrap=b,s

packadd minpac

call minpac#init()
call minpac#add('nanotech/jellybeans.vim')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-commentary')
call minpac#add('rust-lang/rust.vim')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

set guioptions=TlrLR
set t_Co=256
set background=dark

colorscheme jellybeans

syntax on

set scrolloff=3
set scrolljump=5
set splitbelow
set splitright
set title

set number
set relativenumber


set statusline=%f\ %m\ %r%=\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

set showcmd
set showmode
set cmdheight=2
set ruler
set virtualedit=onemore

set wrap
set autoindent
set smartindent

set shiftround
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set smarttab

set tw=500
set formatoptions=qrn1

nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap Q <nop>
nnoremap <leader>w :w!<cr>

nnoremap j gj
nnoremap k gk
nmap J 5j
nmap K 5k
vmap J 5j
vmap K 5k

cnoremap <C-p> <up>
cnoremap <C-n> <down>

inoremap <esc> <nop>
inoremap jk <esc>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

cnoreabbrev q qall!
cnoreabbrev Q qall!

