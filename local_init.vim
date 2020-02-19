" ::::::::::::::::::::::::::::::::::::::::::::::::
" VISUAL
" ::::::::::::::::::::::::::::::::::::::::::::::::
" theme colors
set background=dark
colorscheme dracula

" numbers
set relativenumber

" airline config
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1

" rainbow matching brackets
let g:rainbow_active = 1

" make matching tags more apparent
let g:mta_filetypes = { 'javascript.jsx': 1 }

" show trailing spaces
autocmd VimEnter * EnableWhitespace
