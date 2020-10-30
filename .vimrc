set nocompatible " be iMproved, required
filetype off " required

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'kien/ctrlp.vim'
Plug 'vim-vdebug/vdebug'
call plug#end()

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Line numbers
"set number
set number relativenumber
set nu rnu

" Search result highlighting
set hlsearch

colorscheme gruvbox
set background=dark    " Setting dark mode

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=60

" swapfiles location
set backupdir=/tmp//
set directory=/tmp//

" Consider gitignore files on CTRLP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set colorcolumn=80
set backspace=indent,eol,start

let g:ale_lint_on_save = 1

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Mouse support
set mouse=a

" Prevent crashs when use multi-cursor
set nolazyredraw

" Force syntax
syntax on

" CtrlP with tag
nnoremap <leader>. :CtrlPTag<cr>
