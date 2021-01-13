set list                                                          " Show list characters
set listchars=tab:⟶\ ,extends:›,precedes:‹,nbsp:·,trail:·,space:· " Custom list characters
set ai                                                            " auto indent
set si                                                            " smart indent
set smarttab                                                      " Use shift width to tab at line beginning
set cindent                                                       " do C-style indenting
set tabstop=2                                                     " tab spacing (settings below are just to unify it)
set softtabstop=2                                                 " unify
set shiftwidth=2                                                  " unify
set expandtab                                                     " Give me spaces or give me death
set nowrap                                                        " do not wrap lines
set autowrite                                                     " Save the file when shell commands are run
set autoread                                                      " Update buffer when files change from outside
set wildmenu                                                      " Nice menu completion
set wildmode=full                                                 " zsh style command mode completion
set swapfile                                                      " Keep swap files
set wildignore+=tags,.git,*.o,tmp/**,vendor/**,node_modules/**    " Ignore some things in the wildmenu
set isk+=_,$,@,#,-                                                " none of these should be word dividers
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp                      " Swap file directories
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp                      " Backup file directories
set mouse=a                                                       " Enable mouse for scrolling
set laststatus=2                                                  " Show command bar
set cmdheight=2                                                   " the command bar is 2 high
set number                                                        " turn on line numbers
set lazyredraw                                                    " do not redraw while running macros (much faster) (Lazy Redraw)
set whichwrap+=<,>,h,l                                            " backspace and cursor keys wrap to
set backspace=indent,eol,start                                    " backspace work properly
set cursorline                                                    " Highlight current line
set noshowmode                                                    " Hide the native mode, use vim-lightline
set splitright                                                    " Add new windows towards the right
set splitbelow                                                    " ... and bottom
set history=1024                                                  " History size
set scrolloff=5                                                   " Keep x lines (top/bottom) for scope
set updatetime=300                                                " Update vim-gitgutter quicker
set termguicolors                                                 " Use nice terminal colors
colorscheme onedark                                               " My colorscheme
set ignorecase                                                    " Case in-sensitive searching
set smartcase                                                     " Lowercase fuzzy search, uppercase specific search
set hlsearch                                                      " highlight searched for phrases
set incsearch                                                     " highlight as you type you search phrase
set timeoutlen=1000 ttimeoutlen=0                                 " Timeout delays for escape key
set undodir=~/.config/nvim/temp_dirs/undodir                      " Persistent undo directories
set undofile                                                      " Enable Persistent undo so that I can undo even when you close a buffer
set pumheight=10                                                  " Make popup menu smaller
set formatoptions-=cro                                            " Don't continue line comments
