set nocompatible              " required 
set nocp
filetype plugin on    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable foldingset foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Alternatively use
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8


let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1 
syntax on                                                                   


call togglebg#map("<F5>")
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" let g:nerdtree_tabs_open_on_console_startup=1                              

set nu
set laststatus=2

set clipboard=unnamedplus

let g:Powerline_symbols = 'fancy'

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

set backspace=indent,eol,start


syntax on
" if has('gui_running')
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized
" else
"    let g:zenburn_termcolors=256
"    set t_Co=256    
"    colorscheme zenburn
" endif

call togglebg#map("<F5>")

" relative line numbering 
set relativenumber
" :set norelativenumber  " turn hybrid line numbers off
" :set !relativenumber    " toggle hybrid line numbers

setlocal spell spelllang=en_us


