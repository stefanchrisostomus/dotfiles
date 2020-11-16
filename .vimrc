set number
set nocompatible
filetype plugin on
syntax on
set autoindent

call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-syntastic/syntastic'
Plug 'chrisbra/Colorizer'
Plug 'vimwiki/vimwiki'
Plug 'francoiscabrol/ranger.vim'

call plug#end()

set laststatus=2
let g:lightline = {
       \ 'colorscheme': 'wombat',
       \ }

" Defineleader
let mapleader = "\<Space>"

" Split view
nnoremap <silent> <Leader>s :split<CR>
nnoremap <silent> <Leader>v :vsplit<CR>
nnoremap <silent> <Leader>q :close<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Shift-Enter
inoremap <S-CR> <Esc>
" Double-j
inoremap jj <Esc>

let g:vimwiki_list = [{'path': '~//Documents/github/notebook/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" vim-instant-markdown - Instant Markdown previews from Vim
" https://github.com/suan/vim-instant-markdown

let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

set expandtab
set shiftwidth=2
set softtabstop=2
