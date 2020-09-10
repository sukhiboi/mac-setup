"VIM CONFIGS

set nu
set ls=2
syntax on 
filetype plugin indent on
set backspace=indent,eol,start
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smartindent
set hlsearch
set mouse=a

"set Folds
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

"set cursorcolumn
set cursorline

"MAPPINGS CONFIG

let mapleader = "," "map leaderi

"Tabs
noremap <leader>n <esc>gt<esc>
noremap <leader>m <esc>gT<esc>

inoremap <leader>m <esc>gT<esc>
inoremap <leader>m <esc>gT<esc>


"Panes
noremap <leader>h <esc>:split<esc> 
noremap <leader>v <esc>:vsplit<esc> 

inoremap <leader>h <esc>:split<esc>i 
inoremap <leader>v <esc>:vsplit<esc>i 

"Navigating panes
noremap <leader>] <esc><C-w><C-l><esc> 
noremap <leader>[ <esc><C-w><C-h><esc> 

inoremap <leader>] <esc><C-w><C-l><esc>i 
inoremap <leader>[ <esc><C-w><C-h><esc>i 

"Resizing panes
noremap <leader>- <esc><C-w>-<esc>
noremap <leader>\ <esc><C-w>\|<esc>
noremap <leader>= <esc><C-w>=<esc>

inoremap <leader>- <esc><C-w>-<esc>i
inoremap <leader>\ <esc><C-w>\|<esc>i
inoremap <leader>= <esc><C-w>=<esc>i

"Folds
noremap <leader>c <esc>zc<esc>
noremap <leader>o <esc>zo<esc>
inoremap <leader>c <esc>zc<esc>i
inoremap <leader>o <esc>zo<esc>i

map <leader>s <esc>gg=G``:w<cr>
map <leader>w <esc>gg=G``:wq<cr>

imap <leader>s <esc>gg=G``:w<cr>i
imap <leader>w <esc>gg=G``:wq<cr>

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

noremap <C-c> <esc>"*Y<esc>
inoremap <C-c> <esc>"*Y<esc>i

noremap <C-n> :NERDTreeToggle <cr>

"Abbrivations
inoremap { {<cr>} <Esc>ko 
inoremap clog console.log();<esc>hi
inoremap cf<tab> const  = function() {<cr><cr>return 0;<cr>};<esc>3kt=i
inoremap if<tab> if(){<cr><cr>}<esc>2k3li
inoremap <C-y> <esc>"*y<esc>i

"PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'haya14busa/incsearch.vim'
Plug 'rakr/vim-one'
call plug#end()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

"AIRLINE CONFIGS

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

" symbols

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'

"THEME CONFIGS

set termguicolors
let g:one_allow_italics = 1
colorscheme onedark
" set background=dark
