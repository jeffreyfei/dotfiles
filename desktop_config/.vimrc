colorscheme jellybeans

call plug#begin('~/.vim/plugged')

" Install nerd tree
Plug 'preservim/nerdtree'

" Markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

call plug#end()
" Nerd tree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" Vim markdown config
let g:vim_markdown_folding_disabled = 1

" Set backup directory
set backupdir=~/.vimbackup
set directory=~/.vimbackup
set undodir=~/.vimbackup

syntax on

syntax enable
"set background=dark
"colorscheme solarized

" Indentation rules
set shiftwidth=2
set autoindent
filetype indent on
set expandtab smarttab
set softtabstop=2
set tabstop=2

set ruler
set showmatch
set showmode
set ignorecase
set smartcase
set relativenumber
set number
set splitright
highlight ColorColumn ctermbg=7
set colorcolumn=80

" Automcomplete
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Search improvements
set incsearch
set hlsearch
nmap <silent> <BS> :nohlsearch<CR>

" Always show the status line
set laststatus=2

" Treat long lines as break lines
map j gj
map k gk

" redefine tabs
" filetype plugin indent on
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" remove trailing spaces
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

map ;p "+p
map ;y "+y

nnoremap H gT
nnoremap L gt
