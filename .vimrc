set encoding=UTF-8
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set ruler
" set undolevels=1000
set backspace=indent,eol,start
set pastetoggle=<f5>
set laststatus=2
set noswapfile
set noconfirm " reload buffers silently
set clipboard=unnamed


let g:solarized_termcolors = 256

" paste multiple times
xnoremap p pgvy

" set up the leader key
let mapleader="\\"

"################### python 2/3
set pyxversion=3
" let g:jedi#force_py_version = 3
" let g:UltiSnipsUsePythonVersion = 3

" vim-autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
" pip install --upgrade yapf
let g:formatdef_yapf = "'yapf --style=\"{based_on_style:pep8,indent_width:4,column_limit:80}\" -l '.a:firstline.'-'.a:lastline"
let g:formatters_python = ['yapf']
" pip install --upgrade sqlparse
let g:formatdef_sql = '"sqlformat --comma_first COMMA_FIRST --reindent --keywords upper --identifiers lower -"'
let g:formatters_sql = ['sql']
" let g:autoformat_verbosemode=1
noremap <Leader>F :Autoformat<CR>

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with
" line wrapping on, this can cause the cursor to actually skip a few lines on the screen because
" it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down'
" to mean the next line on the screen
nmap j gj
nmap k gk

" These are things that I mistype and want ignored.
nmap Q  <silent>
nmap q: <silent>
nmap K  <silent>

command! Q q
command! W w

" autosave all files on focus leave
autocmd BufLeave,FocusLost * silent! wall

" vim vim-fzf
nnoremap <C-p> :<C-u>FZF<CR>

" dispatch
let g:dispatch_compilers={}
let g:dispatch_compilers['npm run lint']='tslint'

" ALE
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'python': ['flake8'],
\ 'ruby': ['rubocop'],
\ }

highlight link ALEWarningSign String
highlight link ALEErrorSign Title
nmap ]l :ALENextWrap<CR>
nmap [l :ALEPreviousWrap<CR>
augroup VimDiff
  autocmd!
  autocmd VimEnter,FilterWritePre * if &diff | ALEDisable | endif
augroup END

" indent visual selection
vnoremap < <gv
vnoremap > >gv
" <Tab> key broadly used by YCM
" vnoremap <Tab> >gv
" vnoremap <S-Tab> <gv

" vim-grep
let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" vim-test
let test#strategy = "dispatch"

" these Ctrl-mappings work well when Caps Lock is mapped to Ctrl
nmap <silent> <Leader>tn :TestNearest<CR> " t Ctrl+n
nmap <silent> <Leader>tf :TestFile<CR>    " t Ctrl+f
nmap <silent> <Leader>ts :TestSuite<CR>   " t Ctrl+s
nmap <silent> <Leader>tl :TestLast<CR>    " t Ctrl+l
nmap <silent> <Leader>tg :TestVisit<CR>   " t Ctrl+g

" vim split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" NerdTree
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules', 'venv']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
silent! nmap <leader>\ :NERDTreeToggle<CR>
silent! map <leader>r :NERDTreeFind<CR>
" let g:NERDTreeMapActivateNode="<F3>"
" let g:NERDTreeMapPreview="<F4>"

" vim-commentary
nnoremap <D-/> :Commentary<CR>
vnoremap <D-/> :Commentary<CR>
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" Ctrl-P mapping and two custom split keymappings (https://github.com/kien/ctrlp.vim)
" let g:ctrlp_map = '<c-p>'
" nnoremap <Leader>s :split<CR><c-w>j<c-p>
" nnoremap <Leader>v :vsplit<CR><c-w>l<c-p>

" bind Tab and Shift-Tab to cycle through buffers "
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>q :bd<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch rspec {spec}"
let g:rspec_runner = "os_x_iterm2"

" " webdevicons
" if exists('g:loaded_webdevicons')
"     call webdevicons#refresh()
" endif

" " vim, you complete me
" imap <Tab> <C-P>
set wildmode=longest,list:longest
set completeopt=menu,preview

" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'
nmap ]g :GitGutterNextHunk<CR>
nmap [g :GitGutterPrevHunk<CR>
augroup VimDiff
  autocmd!
  autocmd VimEnter,FilterWritePre * if &diff | GitGutterDisable | endif
augroup END

" debug YouCompleteMe
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'

" ntpeters/vim-better-whitespace
let g:better_whitespace_enabled=0
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1


" open alternate
nnoremap <leader>. :OpenAlternate<cr>


" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhinz/vim-grepper'
Plug 'janko-m/vim-test'
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
" Plug 'ryanoasis/vim-devicons'
Plug 'sgur/vim-editorconfig'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'ervandew/supertab'
Plug 'alampros/vim-styled-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ntpeters/vim-better-whitespace'
Plug 'cyphactor/vim-open-alternate'


" Initialize plugin system
call plug#end()
