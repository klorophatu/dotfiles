set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'wannesm/wmgraphviz.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

filetype plugin indent on

set laststatus=2
set t_Co=256

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1
let g:jsx_ext_required = 0

set encoding=utf-8
set tabstop=8
set shiftwidth=8
set autoindent
set magic " unbreak vim's regex implementation

set number
set scrolloff=3
set sidescroll=3

set ruler
set cc=80
set nowrap

set ignorecase
set smartcase

set splitbelow
set hidden
set notimeout

" Search as you type, highlight results
set incsearch
set showmatch
set hlsearch

" Don't litter swp files everywhere
set backupdir=~/.cache
set directory=~/.cache

set nofoldenable
set lazyredraw

set tags=./tags;

set printheader=\

syntax on
let mapleader = "\<space>"
nnoremap \\ :noh<cr> " Clear higlighting
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR> " Trim trailing spaces
nnoremap Y y$
nnoremap cc :center<cr>
inoremap <C-c> <ESC>
" Ex mode is fucking dumb
nnoremap Q <Nop>

command Jp e ++enc=euc-jp

" Preferences for various file formats
autocmd FileType c setlocal noet ts=8 sw=8 tw=80
autocmd FileType h setlocal noet ts=8 sw=8 tw=80
autocmd FileType cpp setlocal noet ts=8 sw=8 tw=80
autocmd FileType s setlocal noet ts=8 sw=8
autocmd FileType go setlocal noet ts=4 sw=4
autocmd FileType hy setlocal filetype=lisp
autocmd FileType sh setlocal noet ts=4 sw=4
autocmd BufRead,BufNewFile *.js setlocal et ts=2 sw=2
autocmd FileType html setlocal et ts=2 sw=2
autocmd FileType htmldjango setlocal et ts=2 sw=2
autocmd FileType ruby setlocal et ts=2 sw=2
autocmd FileType scss setlocal et ts=2 sw=2
autocmd FileType yaml setlocal et ts=2 sw=2
autocmd FileType markdown setlocal tw=80 et ts=2 sw=2 wrap linebreak spell spelllang=en_US
autocmd FileType text setlocal tw=80
autocmd FileType meson setlocal noet ts=2 sw=2
autocmd FileType bzl setlocal et ts=2 sw=2
autocmd FileType typescript setlocal et ts=2 sw=2
autocmd FileType python setlocal et ts=4 sw=4
autocmd BufNewFile,BufRead *.ms set syntax=python ts=4 sw=4 noet
autocmd FileType tex hi Error ctermbg=NONE
autocmd FileType mail setlocal noautoindent
augroup filetypedetect
  autocmd BufRead,BufNewFile *mutt-*              setfiletype mail
augroup filetypedetect
  autocmd BufRead,BufNewFile *qutebrowser-editor-* set ts=4 sw=4 et
autocmd BufNewFile,BufRead * if expand('%:t') == 'APKBUILD' | set ft=sh | endif
autocmd BufNewFile,BufRead * if expand('%:t') == 'PKGBUILD' | set ft=sh | endif

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=e

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,space:.

syntax enable
colorscheme ron
highlight Search ctermbg=12
highlight NonText ctermfg=darkgrey
highlight SpecialKey ctermfg=darkgrey
highlight clear SignColumn
highlight Comment cterm=bold ctermfg=none
highlight StatusLine cterm=none ctermbg=none ctermfg=darkgrey
highlight StatusLineNC cterm=none ctermbg=none ctermfg=darkgrey
highlight Title cterm=none ctermfg=darkgrey
highlight TabLineFill cterm=none
highlight TabLine cterm=none ctermfg=darkgrey ctermbg=none
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey
highlight jsParensError ctermbg=NONE
highlight Todo ctermbg=NONE ctermfg=red cterm=bold
highlight PreProc ctermfg=grey
highlight String ctermfg=darkblue cterm=italic
highlight Type ctermfg=darkblue
highlight lineNr ctermfg=grey cterm=italic
highlight cIncluded ctermfg=NONE cterm=bold
highlight pythonInclude ctermfg=blue
highlight pythonConditional ctermfg=darkcyan
highlight pythonBuiltin ctermfg=darkcyan
highlight Pmenu ctermbg=white ctermfg=black
highlight PmenuSel ctermbg=darkcyan ctermfg=black
highlight hareKeyword ctermbg=NONE ctermfg=darkcyan


" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
