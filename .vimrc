" Vaidy Vimrc
"
set t_Co=256
:let mapleader = "."
"
:nnoremap <leader>ch :set nohlsearch<cr>
" :nnoremap <leader>| :vsplit<cr>
" :nnoremap <leader>- :split<cr>

set nonumber
set relativenumber
colorscheme default
syntax on
filetype plugin indent on

set path+=**
set wildmenu

command! MakeTags !sudo ctags -R .

" Allow NerdTree as default
autocmd VimEnter * NERDTree | wincmd p
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" let g:netrw_liststyle = 3
" let g:netrw_banner = 0
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"       autocmd!
"         autocmd VimEnter * :Vexplore
"     augroup END
" 
set autoread
au CursorHold * checktime
set cursorline
set nocompatible
set backspace=indent,eol,start
set history=10000
set showcmd
set showmode
" set laststatus=2
set ruler
set wildmenu
set tabpagemax=40
set mouse=a
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set shiftwidth=2
set incsearch
set hlsearch
set confirm
colorscheme darkblue
