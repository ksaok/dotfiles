" plugins
call plug#begin('~/.vim/plugins')
   Plug 'davidhalter/jedi-vim'
   Plug 'tpope/vim-surround'
   Plug 'tpope/vim-repeat'
   Plug 'preservim/tagbar'
   Plug 'preservim/nerdtree' |
       \ Plug 'Xuyuanp/nerdtree-git-plugin' |
       \ Plug 'ryanoasis/vim-devicons'
"   Plug 'vim-airline/vim-airline'
   Plug 'preservim/nerdcommenter'
   Plug 'tpope/vim-fugitive'
"   Plug 'jreybert/vimagit'
	Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'fisadev/FixedTaskList.vim'
	Plug 'fatih/vim-go'
call plug#end()

" tagbar
let g:tagbar_autoclose = 1

" NERDTree config
"" auto exit
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" python-mode config
let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_indent = 1
let g:pymode_motion = 1
let g:pymode_options_max_line_length = 120
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
"" disable it for a while
let g:pymode_run = 0
"" code checking
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 1
"" end code checking
"" disable it for a while
let g:pymode_rope = 0
"" disable rope completion, because we use jedi
let g:pymode_rope_completion = 0
let g:pymode_syntax = 1

" NERD Commenter
"let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" for tmux colors
set background=dark

" for devicons
set encoding=UTF-8

" indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" numbering
set number relativenumber
augroup numbertoggle
   autocmd!
   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END 

" syntax on by default
syntax on

" search ignore/smart case
set smartcase
set ignorecase

" hotkeys
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

" other settings
set ts=3
set pastetoggle=<F2>
