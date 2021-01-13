" ========== PLUG INS ==========
call plug#begin()
" Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-html', 'coc-json', 'coc-prettier']
" Plug 'airblade/vim-gitgutter'
" Plug 'dense-analysis/ale'
" Plug 'elixir-editors/vim-elixir'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
call plug#end()

" ---------- ALE ----------
" let g:ale_sign_error = '●'
" let g:ale_sign_warning = '.'
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_fix_on_save = 1
" let g:ale_list_window_size = 5
" let g:ale_fixers = {
" \ '*': ['remove_trailing_lines', 'trim_whitespace'],
" \ 'elixir': ['mix_format'],
" \ 'eelixir': ['prettier'],
" \ 'javascript': ['prettier'],
" \ 'markdown': ['prettier'],
" \ 'html': ['prettier'],
" \ 'javascript.jsx': ['prettier'],
" \ 'json': ['prettier'],
" \ 'ruby': ['rubocop'],
" \ 'rust': ['rustfmt'],
" \ 'sql': ['pgformatter'],
" \ 'typescript': ['prettier'],
" \ 'typescript.tsx': ['prettier'],
" \}
" let g:ale_linters = {
" \ 'elixir': ['credo'],
" \ 'javascript': ['eslint'],
" \ 'typescript': ['eslint'],
" \ 'typescript.tsx': ['eslint'],
" \}

" ---------- LightLine ----------
let g:lightline = {
\ 'colorscheme': 'onedark',
\ 'component': {
\   'lineinfo': ' %3l:%-2v',
\ },
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'readonly', 'filename', 'modified' ] ],
\   'right': [ [ 'lineinfo', ], [ 'percent' ], [ 'filetype' ], [ 'fugitive' ] ]
\ },
\ 'separator': { 'left': '', 'right': '' },
\ 'subseparator': { 'left': '', 'right': '' },
\ 'component_function': {
\   'readonly': 'LightlineReadonly',
\   'fugitive': 'LightlineFugitive',
\ },
\}

function! LightlineReadonly()
	return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
	if exists('*FugitiveHead')
		let branch = FugitiveHead()
		return branch !=# '' ? ' '.branch : ''
	endif
	return ''
endfunction

" ---------- Nerd Commenter ----------
let NERDSpaceDelims = 1 " Spaces after comment
let NERDCommentEmptyLines = 1 " Ability to just comment empty lines

" ---------- Nerd Tree ----------
let g:NERDTreeIgnore = ['^node_modules$']

" --------- FZF ----------
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
