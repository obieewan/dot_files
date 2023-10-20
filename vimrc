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
nnoremap <C-j>
