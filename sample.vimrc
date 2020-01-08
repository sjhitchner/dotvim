execute pathogen#infect()
syntax on
filetype plugin indent on

set showcmd
set tabstop=4
set shiftwidth=4
set noerrorbells novisualbell
set belloff=all
set hidden
set splitbelow  "split options
set splitright
set number
set ruler   
set hlsearch "search highlighting
set autochdir
set noswapfile

"dank-neon
"orbital
"blayu
"falcon
"new-railscasts
"bluish
"adventurous
"solarized
"Tomorrow-Night-Blue
"gotham
"wombat256
"colorscheme gotham
colorscheme wombat256

" Terraform files
autocmd FileType tf setlocal shiftwidth=2 tabstop=2

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 "expandtab

" Delete trailing whitespace
autocmd BufWritePre *.py :%s/\s+$//e

" NerdTree Setup
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" Syntastic
" [buffer number] followed by filename:
set statusline=[%n]\ %t
" for Syntastic messages:
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" show line#:column# on the right hand side
set statusline+=%=%l:%c


let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
"let g:syntastic_python_checker_args = '--disable=C0111'
