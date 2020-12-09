set number
set nocompatible
syntax on
filetype plugin indent on    " required
filetype off                  " required


call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'                       " Lightline statusbar
Plug 'frazrepo/vim-rainbow'
Plug 'scrooloose/nerdtree'                         " Nerdtree
Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
Plug 'francoiscabrol/ranger.vim'
Plug 'vimwiki/vimwiki'                             " VimWiki 
Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
Plug 'vim-python/python-syntax'                    " Python highlighting
Plug 'ap/vim-css-color'                            " Color previews for CSS
Plug 'Valloric/YouCompleteMe'
Plug 'chrisbra/colorizer'

call plug#end()

set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1

" Defineleader
let mapleader = "\<Space>"

" Double-j
inoremap jk <Esc>

" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>


au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org            call org#SetOrgFileType()

" set guioptions-=m  "remove menu bar
" set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set fillchars+=vert:\

let g:vimwiki_list = [{'path': '~/Documents/github/vimwiki/index.wiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let s:vimwiki = {}
let s:vimwiki.path = '~/Documents/github/vimwiki/index.wiki'
let s:vimwiki.ext = '.wiki'
let s:vimwiki.syntax = 'default'
let s:vimwiki.ext2syntax = {'.wiki': 'default'}
let g:vimwiki_list = [s:vimwiki]

highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
highlight Statement        ctermfg=2    ctermbg=none    cterm=none
highlight Directory        ctermfg=4    ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
highlight NERDTreeClosable ctermfg=2
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4    ctermbg=none    cterm=italic
highlight Constant         ctermfg=12   ctermbg=none    cterm=none
highlight Special          ctermfg=4    ctermbg=none    cterm=none
highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
highlight String           ctermfg=12   ctermbg=none    cterm=none
highlight Number           ctermfg=1    ctermbg=none    cterm=none
highlight Function         ctermfg=1    ctermbg=none    cterm=none

let g:rainbow_active = 1

