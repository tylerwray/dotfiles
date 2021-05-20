" Reload any vimrc configuration changes
command! Reload source ~/.config/nvim/init.vim

" JSONC syntax
autocmd FileType json syntax match Comment +\/\/.\+$+

" Syntax sync from start hack
autocmd BufEnter * :syntax sync fromstart

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
