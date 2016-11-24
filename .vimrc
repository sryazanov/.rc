" source ~/rc/.vimrc

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

nmap <C-n> :NERDTreeToggle<cr>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'simple'
let g:airline_powerline_fonts = 1
let g:ctrlp_working_path_mode = '.'

filetype plugin indent on
syntax enable
au FileType javascript set expandtab tabstop=2 shiftwidth=2

nmap <C-h> :bp<cr>
nmap <C-l> :bn<cr>
nmap <C-i> :bd<cr>

set laststatus=2
set mouse=a
