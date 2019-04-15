call plug#begin()

Plug 'HerringtonDarkholme/yats.vim'

Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

Plug 'joshdick/onedark.vim'

Plug 'mxw/vim-jsx'

Plug 'editorconfig/editorconfig-vim'

Plug 'itchyny/lightline.vim'
let g:lightline = {
\ 'colorscheme': 'onedark',
\}

Plug 'scrooloose/nerdcommenter'
let NERDSpaceDelims = 1 " Spaces after comment

Plug 'pangloss/vim-javascript'

Plug 'prettier/vim-prettier', { 'do': 'npm install' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'
" Use .gitignore in fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

Plug 'elixir-editors/vim-elixir'

Plug 'w0rp/ale'
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\ 'elixir': ['mix_format'],
\ 'javascript': ['prettier'],
\ 'typescript': ['prettier'],
\ 'typescript.tsx': ['prettier'],
\ 'ruby': ['rubocop'],
\}
let g:ale_linters = {
\ 'elixir': ['credo'],
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint'],
\ 'typescript.tsx': ['eslint'],
\ 'ruby': ['rubocop'],
\}
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_rubocop_options = '--config .rubocop-dev.yml --require outrigger/cops/migration/tagged'

call plug#end()

