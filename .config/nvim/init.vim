call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
call plug#end()

set termguicolors
colorscheme nord
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
syntax on
set laststatus=2
set noshowmode
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set autoindent
set cindent
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
set nu rnu

set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey


" Set maploader
let mapleader = " "

" Set indent for javascript
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2


inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

