" --- START PLUGINS ---
call plug#begin('~/.vim/plugged')
  " sensible defaults
  Plug 'tpope/vim-sensible'
  " status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " color theme
  Plug 'kristijanhusak/vim-hybrid-material'
  " syntax related
  Plug 'pangloss/vim-javascript'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'mxw/vim-jsx'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'valloric/matchtagalways'
  Plug 'luochen1990/rainbow'
  " snippets and helpers
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'epilande/vim-es2015-snippets'
  Plug 'epilande/vim-react-snippets'
  Plug 'tpope/vim-surround'
" Initialize plugin system
call plug#end()

" airline theme
let g:airline_theme = "hybrid"
" ultisnippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" matching tags for JSX
let g:mta_filetypes = { 'javascript.jsx': 1 }
" enable rainbow
let g:rainbow_active = 1

" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
  set t_ut=
endif

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme hybrid_material
" --- END PLUGINS ---

" Turn on syntax highlighting.
syntax on

set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Show line numbers
set number relativenumber
set nu rnu
