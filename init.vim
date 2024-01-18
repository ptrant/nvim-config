menu
set wildmode=full
set hidden
set cc=120
set nobackup
set nowb
set noswapfile
set background=dark
set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase

syntax enable

let mapleader=" "
let g:mapleader=" "

nnoremap <leader>q :q<cr>
" for tabs
nnoremap <leader>te :tabedit 
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>

" for buffers
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bc :bunload<cr>
nnoremap <leader><tab> :bprevious<cr>
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

nnoremap <leader>e :Lexplore<cr>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

let g:netrw_liststyle = 3
let g:netrw_keepdir = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 30
let g:netrw_localcopydircmd = 'cp -r'

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
Plug 'easymotion/vim-easymotion'
" map <Leader> <Plug>(easymotion-prefix)"

Plug 'tomtom/tcomment_vim'

let g:ctrlp_cmd ='CtrlPMixed'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'rafi/awesome-vim-colorschemes'

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

Plug 'editorconfig/editorconfig-vim'

call plug#end()

colorscheme deus

source /usr/share/doc/fzf/examples/fzf.vim
