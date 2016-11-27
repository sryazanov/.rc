" source ~/rc/.vimrc

call plug#begin()
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

nmap <silent> <C-u> :NERDTreeToggle<cr>

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'simple'
let g:ctrlp_working_path_mode = '.'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ }

filetype plugin indent on
syntax enable
au FileType javascript set expandtab tabstop=2 shiftwidth=2

nmap <silent> <C-i> :bn<cr>

set laststatus=2
set mouse=a
