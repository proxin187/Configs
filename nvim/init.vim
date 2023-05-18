set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set relativenumber                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
set termguicolors
set nowrap
set formatoptions-=t
set list
set listchars=trail:⋅

call plug#begin()
 Plug 'ryanoasis/vim-devicons'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
 Plug 'vim-airline/vim-airline-themes'
 Plug 'vim-airline/vim-airline'
 Plug 'navarasu/onedark.nvim'
call plug#end()

let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha

lua require("catppuccin").setup()

let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark

autocmd VimEnter * NERDTree
" Rebind w because the w key on my keyboard is broken lol
command E w
command EQ wq
noremap <C-H> <C-W>w

" Syntax highlighting for coc
autocmd BufRead,BufNewFile *.crust set filetype=crust


