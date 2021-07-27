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
nnoremap <leader>\ :e $MYVIMRC<CR>
inoremap jk <Esc>
nnoremap th :tabfirst<cr>
nnoremap tj :tabnext<cr>
nnoremap tk :tabprev<cr>
nnoremap tl :tablast<cr>
nnoremap tt :tabedit<cr>
nnoremap tm :tabm<cr>
nnoremap td :tabclose<cr>
nnoremap ; :
nnoremap <leader>ff :FZF<cr>
nnoremap <leader>fj :Ex<cr>
"binds pra mover entre os splits
nnoremap <leader><Up> :wincmd k<CR>
nnoremap <leader><Down> :wincmd j<CR>
nnoremap <leader><Left> :wincmd h<CR>
nnoremap <leader><Right> :wincmd l<CR>
"configurando fold
set foldmethod=indent
nnoremap <space>w za
vnoremap <space>wa zf
nnoremap <space>z zM
nnoremap <space>x zR

"Plugins
call plug#begin("~/.vim/plugged")
Plug 'junegunn/fzf'
Plug 'vimsence/vimsence'
Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()

"outras config
"netrw
let g:netrw_banner=0
let g:netrw_liststylel=3
"jedi
let g:jedi#auto_initialization = 1
"pymode
let g:pymode_rope = 0


"auto comandos time
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd FileType python setlocal completeopt-=preview
