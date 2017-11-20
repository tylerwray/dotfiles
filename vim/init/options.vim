" Text Formatting/Layout
set fo=tcrqn      " See Help (complex)
set ai            " autoindent
set si            " smartindent
set smarttab      " Use shiftwidth to tab at line beginning
set cindent       " do c-style indenting
set tabstop=2     " tab spacing (settings below are just to unify it)
set softtabstop=2 " unify
set shiftwidth=2  " unify
set expandtab     " Give me spaces or give me death
set nowrap        " do not wrap lines
set nrformats=    " treat all numerals as decimal

" Normal Mode Mappings
" -- map Enter key to newline
nmap <CR> o<Esc>

" Visual Cues
set list                    " Show whitespace
set listchars=trail:·       " Set trail character
set listchars=space:·       " Set space character
set listchars=tab:--        " Set tab character 
set showmatch               " Show matching brackets
set hlsearch                " Highlight search
set incsearch               " Highlight search as you type
set smartcase               " Case insensitive search

" Command line
set history=1024            " Save larger vim command history


" Folding
set nofoldenable            " Turn off folding
set foldmethod=indent       " Make folding indent sensitive

" Productivity
set wildmenu                " Show autocomplete menu
set wildmode=full           " ZSH style command completion
set autoread                " No prompt for file changing outside vim
set swapfile
set wildignore+=tag
set wildignore+=tmp/**
set wildignore+=public/uploads/**
set wildignore+=public/images/**
set wildignore+=vendor/**
set isk+=_,$,@,%,#,-
set wildignore+=.git,*.o,tmp/**,vendor/rails/**
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set timeoutlen=1000
set ttimeoutlen=0

" Vim UI
set nowrap
set lsp=0                   " Linespace
set number                  " Turn on line numbers
set numberwidth=3           " Max digits to show of line numbers
set lz                      " Lazy redraw macros
set mouse=a                 " Use a mouse everywhere
set fillchars=vert:\ ,stl:\ ,stlnc:\   " Make the splitters blank
set cursorline              " Show a cursorline
set scrolloff=5             " Scroll when cursor is 5 lines from edge
