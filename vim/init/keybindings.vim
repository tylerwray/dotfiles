" Keybindings
let mapleader = ","
let maplocalleader = ";"

" Auto-indent whole file
map <silent> <F8> mzgg=G'z :delmarks z<CR>:echo "Reformatted."<CR>

" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

" Find File/Buffer/Tag
" map <leader>F   :CtrlPClearCache<CR>:CtrlP<CR>
" map <leader>f   :CtrlP<CR>
" map <leader>b   :CtrlPBuffer<CR>

" Comment/uncomment lines
" map <leader>/   <plug>NERDCommenterToggle

" clear search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" AckGrep current word
" map <leader>a :call AckGrep()<CR>
" AckVisual current selection
" vmap <leader>a :call AckVisual()<CR>

" Bubble single lines
" nmap { [e
" nmap } ]e
" Bubble multiple lines
" vmap { [egv
" vmap } ]egv
