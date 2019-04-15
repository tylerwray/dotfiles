" Visual Cues
set hlsearch      " highlight searched for phrases
set incsearch     " highlight as you type you search phrase
set history=1024  " History size
set scrolloff=10  " Keep x lines (top/bottom) for scope

" Characters to show when whitespace is enabled
set list
set listchars=tab:⟶\ ,extends:›,precedes:‹,nbsp:·,trail:·
match ErrorMsg '\s\+$'

set noshowmode " Hide the native mode, use the powerline
set splitright " Add new windows towards the right
set splitbelow " ... and bottom

" Text Formatting/Layout
set ai            " autoindent
set si            " smartindent
set smarttab      " Use shiftwidth to tab at line beginning
set cindent       " do c-style indenting
set tabstop=4     " tab spacing (settings below are just to unify it)
set softtabstop=4 " unify
set shiftwidth=4  " unify
set expandtab     " Give me spaces or give me death
set nowrap        " do not wrap lines

" Files/Backups
set autowrite     " Save the file when shell/cmd are run
set autoread      " Update buffer when files change from outside
set wildmenu      " Nice menu completion
set wildmode=full " zsh style command mode completion
set autoread      " No prompt for file changes outside Vim
set swapfile      " Keep swapfiles
set wildignore+=tags,.git,*.o,tmp/**,vendor/**,node_modules/**
set isk+=_,$,@,%,#,-              " none of these should be word dividers
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp
autocmd BufWritePre *.json execute '%!python -m json.tool' | w  " Auto-format json files

" Vim UI
set mouse=a                           " Mouse support
set laststatus=2                      " Show command bar
set cmdheight=1                       " the command bar is 2 hign
set number                            " turn on line numbers
set lz                                " do not redraw while running macros (much faster) (LazyRedraw)
set whichwrap+=<,>,h,l                " backspace and cursor keys wrap to
set backspace=indent,eol,start        " backspace work properly
set fillchars=vert:\ ,stl:\ ,stlnc:\  " make the splitters between windows be blank
" make splitters between windows use the same background/foreground color as vim
hi VertSplit guibg=bg guifg=bg
set cursorline                        " Highlight current line

" Case insensitive search by default
set ignorecase
set smartcase

set timeoutlen=1000 ttimeoutlen=0 " Timeout delays for escape key
