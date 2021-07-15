syntax on

"meus sets
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set hidden
set scrolloff=6
set incsearch
set clipboard=unnamedplus

"mapeamentos time
let mapleader = " "
inoremap jk <Esc>
nnoremap th :tabfirst<cr>
nnoremap tj :tabnext<cr>
nnoremap tk :tabprev<cr>
nnoremap tl :tablast<cr>
nnoremap tt :tabedit<cr>
nnoremap tm :tabm<cr>
nnoremap td :tabclose<cr>
nnoremap ; :
nnoremap <leader>ff :FZF ~<cr>
nnoremap <leader>fj :Ex<cr>

"Plugins
call plug#begin("~/.vim/plugged")
Plug 'junegunn/fzf'
call plug#end()

"outras config
let g:netrw_banner=0
let g:netrw_liststylel=3

"auto comandos time
autocmd BufWritePre * :%s/\s\+$//e
