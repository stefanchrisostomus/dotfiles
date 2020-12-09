# highlight Normal guibg=NONE ctermbg=NONE
# highlight NonText guibg=NONE ctermbg=NONE
# highlight EndOfBuffer guibg=NONE ctermbg=NONE

set t_Co=256
syntax on 

lua require'plug-colorizer'

luafile $HOME/.config/nvim/lua/plug-colorizer.lua 
autoload/colorizer.vim

set termguicolors

" If you use vim inside tmux, see https://github.com/vim/vim/issues/993
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
