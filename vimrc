" Plugins:{{{
" FOLLOWING FOR VUNDLE AND RESP PLUGINS
set nocompatible              " be iMproved, required
filetype off                  " required

" For Airline:{{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='wombat'
" FINALLY SEPARATORS «»▶◀
let g:airline#extensions#tabline#left_sep = '»'
let g:airline#extensions#tabline#left_alt_sep = '»'
let g:airline#extensions#tabline#right_sep = '◀'
let g:airline#extensions#tabline#right_alt_sep = '◀'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_detect_modified=1
let g:airline_detect_spell=1
let airline#extensions#ale#show_line_numbers = 1
let g:airline#extensions#ycm#enabled = 1	" show ycm detected errors
let g:airline#extensions#ycm#error_symbol = 'E:'	" error counts
let g:airline#extensions#ycm#warning_symbol = 'W:'	" warning counts
" }}}

" For ycm-core:{{{
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_auto_hover = 'CursorHold'
" }}}

" For any remaps, come here:{{{
"Normal feature Ctrl+W <hjkl>(Switching between buffers)
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
" For fake visuals. No redraws
nnoremap j gj
nnoremap k gk
let g:multi_cursor_quit_key = '<Esc>'
 "Esc with jk seq
inoremap jk <esc>
"}}}

" Vim stuff:{{{
set number
set autoindent
syntax enable
set wildmenu
set showcmd
set cursorline
set noswapfile
set spell
set cindent
set completeopt=menu,preview,noinsert
" au WinLeave * set nocursorline nocursorcolumn                                                          
" au WinEnter * set cursorline cursorcolumn
set modelines=1
set foldenable 	" Enabling fold
set foldmethod=marker " for the '{{
set foldlevel=0
set modelines=1
set expandtab
set shiftwidth=4
" MY OWN THEME
highlight Pmenu ctermfg=white
highlight PmenuSel ctermbg=gray
highlight Pmenu ctermbg=darkgray guibg=darkgray  
highlight LineNr ctermfg=darkgrey
highlight CursorLine ctermbg=234
highlight Normal ctermbg=233
highlight LineNr ctermbg=236
" }}}

" for ctrlp:{{{
set runtimepath^=~/.vim/bundle/ctrlp.vim 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'
"}}}

" for ale:{{{
let g:ale_set_balloons = 1
"}}}
" vim:foldmethod=marker:foldlevel=0
