" ========== PLUGINS ==========
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'elixir-editors/vim-elixir'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
call plug#end()

" ========== OPTIONS ==========

" ---------- ALE ----------
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\ 'elixir': ['mix_format'],
\ 'javascript': ['prettier'],
\ 'javascript.jsx': ['prettier'],
\ 'json': ['prettier'],
\ 'typescript': ['prettier'],
\ 'typescript.tsx': ['prettier'],
\ 'ruby': ['rubocop'],
\ 'rust': ['rustfmt'],
\}
let g:ale_linters = {
\ 'elixir': ['credo'],
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint'],
\ 'typescript.tsx': ['eslint'],
\}

" ---------- LightLine ----------
let g:lightline = {
\ 'colorscheme': 'onedark',
\}

" ---------- Nerd Commenter ----------
let NERDSpaceDelims = 1 " Spaces after comment
let NERDCommentEmptyLines = 1 " Ability to just comment empty lines

" ---------- Ultisnips ----------
let g:UltiSnipsExpandTrigger="<tab>"
