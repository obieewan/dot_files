execute pathogen#infect()
syntax enable
filetype plugin indent on
set nocompatible
set hidden

set number
set relativenumber


set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd

set wildmenu
set wildmode=list:longest

set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set colorcolumn=120
set nowrap
set undofile

"set leader key to a comma (,)
let mapleader = ","

"alias ESC with jj
inoremap jj <ESC>
inoremap jk <ESC>


"tame vim search
"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault

"highlight search results
set incsearch
set showmatch
set hlsearch

"remove highlight
nnoremap <leader><space> :noh<cr>

"use tab instead of % in looking for bracket pairs
nnoremap <tab> %
vnoremap <tab> %

"use ,w and ,s for split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

"easier window navigations
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <C-w>h
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l

" Window resizing
nnoremap + <C-w>+
nnoremap - <C-w>-
nnoremap } <C-w>>
nnoremap { <C-w><lt>

"""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" RainbowParentheses
nnoremap <leader>r :RainbowParenthesesToggle<CR>

" Slime.vim
let g:slime_target = "tmux"

" Fugitive.vim

" Ack.vim
nnoremap <leader>a :Ack 
let g:ackprg = 'ag --nogroup --nocolor --column'

"" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"" RipGrep
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --ignore-vcs --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

"set colorscheme
set background=dark
colorscheme solarized

nnoremap <leader>z :ZoomWin<CR>

"indent guide
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1 
