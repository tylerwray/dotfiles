let mapleader = "\<Space>"

" Comment code easily
map <leader>/ <plug>NERDCommenterToggle

" Toggle the file tree
map <silent> <Bslash> :NERDTreeToggle<CR>

" Focus current file in tree
map <silent> <leader>E :NERDTreeFind<CR>

" Fuzzy find a file
nnoremap <silent> <leader>p :Files<CR>

" Format the current buffer
nnoremap <silent> <leader>F :ALEFix<CR>

" Find code in working directory
nnoremap <silent> <leader>f :Rg<CR>

" List buffers nicely with fzf
nnoremap <silent> <leader>b :Buffers<CR>

" Quick toggle folds with the comma command (not really using this)
" nnoremap , za

" Yank text indo the OS clipboard
vnoremap <silent> <leader>y :<CR>:let @a=@" \| execute "normal! vgvy" \| let res=system("pbcopy", @") \| let @"=@a<CR>

" Awesome search and replace
nmap <leader>s :%s///g<left><left>

" Smooth scrolling
" Disabling for now to diiscourage mouse use
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Easily navigate splits with vim motions
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Run elixir tests
nmap <Leader>t :execute "!clear && mix test %\\:" . line(".")<CR>
nmap <Leader>T :execute "!clear && mix test %"<CR>

