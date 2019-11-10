let mapleader = " "

" Make Y yank to end of line
map Y           y$

map <leader>/ <plug>NERDCommenterToggle
map <silent> <Bslash> :NERDTreeToggle<CR>
nnoremap <silent> <leader>p :Gfiles<CR>
nnoremap <silent> <leader>F :ALEFix<CR>
nnoremap <silent> <leader>f :Ag<CR>

vnoremap <silent> <leader>y :<CR>:let @a=@" \| execute "normal! vgvy" \| let res=system("pbcopy", @") \| let @"=@a<CR>

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
