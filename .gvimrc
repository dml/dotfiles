syntax on
" set guifont=AnonymousPro\ Nerd\ Font:h16
set guifont=mononoki\ Bold\ Nerd\ Font\ Complete:h16
set linespace=0

set columns=90 lines=50
set errorbells
set guicursor+=a:blinkon0
set guioptions=igme
set mousemodel=popup
set nocursorline
" set nonumber
set scrolloff=15
set sidescrolloff=6
set visualbell
set antialias

hi SignColumn guibg=NONE
hi Search term=NONE ctermfg=0 ctermbg=14 guifg=#ffffff guibg=#444444

set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
"colorscheme Tomorrow-Night

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

if has("gui_macvim")
  nnoremap <D-1> :set columns=90<CR>
  nnoremap <D-2> :set columns=180<CR>
  nnoremap <D-3> :set columns=270<CR>
end

if has("gui_macvim")
  set title titlestring=MacVim\ \|\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}
  set fuoptions=maxhorz,maxvert
  set transparency=0

  " vim vim-fzf
  macmenu File.Print key=<nop>
  nnoremap <D-p> :<C-u>FZF<CR>
elseif has("gui")
  set title titlestring=gvim\ \|\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}
end
