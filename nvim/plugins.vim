" " ============= Vim-Plug ============== "{{{

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(expand('~/.config/nvim/plugged'))

"}}}
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'elixir-editors/vim-elixir'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
call plug#end()

" ---------- ALE ----------
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_list_window_size = 5
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'elixir': ['mix_format'],
\ 'eelixir': ['prettier'],
\ 'go': ['gofmt', 'goimports'],
\ 'javascript': ['prettier'],
\ 'markdown': ['prettier'],
\ 'html': ['prettier'],
\ 'javascript.jsx': ['prettier'],
\ 'json': ['prettier'],
\ 'ruby': ['rubocop'],
\ 'rust': ['rustfmt'],
\ 'sql': ['pgformatter'],
\ 'typescript': ['prettier'],
\ 'typescript.tsx': ['prettier'],
\}
let g:ale_linters = {
\ 'elixir': ['credo'],
\ 'go': ['gopls'],
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint'],
\ 'typescript.tsx': ['eslint'],
\}
" let g:ale_javascript_prettier_options = '--parser html'
let g:ale_cpp_gcc_options = '-std=c++17 -Wall'
let g:ale_cpp_clang_options = '-std=c++17 -Wall'

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

" ---------- UltiSnips ----------
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom_snippets"]

" ---------- Gruvbox ----------
let g:gruvbox_italic = 1
let g:gruvbox_bold = 1
let g:gruvbox_underline = 1
let g:gruvbox_undercurl = 1

" ---------- Go ----------
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_gopls_enabled = 0


" --------- FZF ----------
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }

" --------- C++ ----------
function! Formatonsave()
  let l:formatdiff = 1
  if has('python')
    pyf /usr/local/Cellar/clang-format/10.0.1/share/clang/clang-format.py
  elseif has('python3')
    py3f /usr/local/Cellar/clang-format/10.0.1/share/clang/clang-format.py
  endif
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()
