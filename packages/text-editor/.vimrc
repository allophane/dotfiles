" use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect
set nocompatible

" undo history
set history=500
set undolevels=500
set undofile
set undodir=~/.vim/undo

" backups
set nobackup
set noswapfile

set matchtime=2

" eliminate Esc delay
set timeoutlen=1000 ttimeoutlen=0

set hidden

set backspace=indent,eol,start

" case insensitive search
set ignorecase
set smartcase
set infercase
set incsearch
set hlsearch

set autoindent
set complete-=i
set smarttab

set softtabstop=2
set shiftwidth=2
set expandtab

" folding.
set foldmethod=manual

filetype indent on

" UI

" true color
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors

set background=dark

" syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

filetype plugin on

" line numbers
set relativenumber
set number

" split style
set splitbelow
set splitright

" components
set title
set showcmd
set noshowmode
set laststatus=2
set ruler

" viewport
set textwidth=80
set colorcolumn=+1
set formatoptions=cq
set scrolloff=5

" invisibles
set list
set listchars=tab:»\ ,trail:·,nbsp:·

" conceal
set concealcursor=n
setlocal conceallevel=2

" cursor
set nocursorline
set nostartofline

" keybindings

" leader
let mapleader=" "
nnoremap <SPACE> <Nop>

nnoremap ; :
nnoremap : ;

inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>

" buffers navigation
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>

nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>l :bnext<CR>

" splits
nnoremap <Leader>\ :vsp<CR>
nnoremap <Leader>- :sp<CR>

" save
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-C>:update<CR>

" scrollwheel
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" extra settings

" fuzzy find
set path+=**
" lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase
" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
