" source ~/rc/.vimrc

call plug#begin()
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

nmap <silent> <leader>t :NERDTreeToggle<cr>

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
au FileType python set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

set hidden " Allows buffer to be hidden if you've modified the buffer.
nmap <leader>s :bp<cr>
nmap <leader>g :bn<cr>
nmap <leader>d :bn<cr>

set ttyfast
set laststatus=2
set ttymouse=xterm2
set mouse=a
set nu
