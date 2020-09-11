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

" Colorscheme
Plug 'ayu-theme/ayu-vim'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Vim Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" Supporting comments
Plug 'tpope/vim-commentary'

" Indent line
Plug 'Yggdroot/indentLine'

" File explorer
Plug 'preservim/nerdtree'

" airline the status bar
Plug 'vim-airline/vim-airline'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Languages support
Plug 'sheerun/vim-polyglot'

" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring', {'tag': 'main'}

call plug#end()
