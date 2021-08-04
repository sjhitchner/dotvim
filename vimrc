execute pathogen#infect()

filetype plugin indent on
syntax on

set autowrite
set autoread
set novisualbell
set noerrorbells

set showcmd
set tabstop=4
set shiftwidth=4
set belloff=all
set hidden
set splitbelow  "split options
set splitright
set number
set ruler   
set hlsearch "search highlighting
set noswapfile
set shortmess=I
set autochdir

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
"colorscheme wombat256
"highlight Normal guibg=darkblue
" enable 24bit true color
if (has("termguicolors"))
  set termguicolors
endif

" enable the theme
syntax enable
"colorscheme true
"colorscheme edge
"colorscheme knicks-away
"colorscheme xcodedark
"colorscheme darkspace
colorscheme synthwave84

" Go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
"let g:go_fmt_autosave = 1
"let g:go_fmt_command = "goimports"
"let g:go_fmt_command = "gofmt"
"let g:go_fmt_options = 1
"let g:go_fmt_fail_silently = 1
"let g:go_addtags_transform = "camelcase"
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_interfaces = 1
"let g:go_highlight_operators = 1

" Terraform files
autocmd FileType tf setlocal shiftwidth=2 tabstop=2

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 "expandtab

" Delete trailing whitespace
autocmd BufWritePre *.py :%s/\s+$//e

"" NerdTree Setup
"map <C-n> :NERDTreeToggle<CR>
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
noremap <F1> <nop>
inoremap <F1> <nop>
noremap <F2> <nop>
inoremap <F2> <nop>
noremap <F3> <nop>
inoremap <F3> <nop>
noremap <F4> <nop>
inoremap <F4> <nop>

" Syntastic
" [buffer number] followed by filename:
set statusline=[%n]\ %t
" for Syntastic messages:
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" show line#:column# on the right hand side
set statusline+=%=%l:%c
"
"
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck', 'goimports']
let g:syntastic_python_checker_args = '--disable=C0111'
