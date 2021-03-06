" source ~/rc/.vimrc

call plug#begin()

Plug 'Valloric/YouCompleteMe'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
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
au FileType javascript set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au FileType python set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
au FileType cpp set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=100 expandtab autoindent fileformat=unix

" :e %%<TAB>filena<TAB> - open a file in directory of currnt file
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

set hidden " Allows buffer to be hidden if you've modified the buffer.
nmap <leader>s :bp<cr>
nmap <leader>g :bn<cr>
nmap <leader>d :bn<cr>

set ttyfast
set laststatus=2
set ttymouse=xterm2
set mouse=a
set nu

nmap <F8> :TagbarToggle<CR>
nmap gd :YcmCompleter GoTo<CR>
nmap gt :YcmCompleter GetType<CR>
nmap gr :YcmCompleter GoToReferences<CR>
