let vimplugpath=expand('~/./autoload/plug.vim')
let curl=expand('curl')

if !filereadable(vimplugpath)
  if !executable(curl)
    echoerr "vim-plug is not installed. Reason: curl does not exist."
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  silent exec "!"curl " -fLo " . shellescape(vimplugpath) . " --create-dirs " . plugurl
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif



call plug#begin('~/.vim/plugged')

" universal modert vim settings
Plug 'tpope/vim-sensible'

" Colorscheme
Plug 'ayu-theme/ayu-vim'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Vim Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" supporting wrapping
Plug 'tpope/vim-surround'

" Supporting comments
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'

" Indent line
Plug 'Yggdroot/indentLine'

" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" File explorer
Plug 'preservim/nerdtree'

" replace occurrences in many buffers being aware of the context
Plug 'pelodelfuego/vim-swoop'

" airline the status bar
Plug 'vim-airline/vim-airline'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" Languages support
Plug 'sheerun/vim-polyglot'

" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring', {'tag': 'main'}
Plug 'vim-test/vim-test'

" go
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" html
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

" javascript
Plug 'jelera/vim-javascript-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'peitalin/vim-jsx-typescript'

" python
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'

" markdown
Plug 'plasticboy/vim-markdown'

call plug#end()
