" Plugin management with vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" Fuzzy finder (optional)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color schemes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" Basic settings
set nocompatible        " Use Vim settings, not Vi settings
set backspace=2         " Allow backspacing over everything in insert mode
set ruler               " Show the cursor position all the time
syntax off              " Disable syntax highlighting by default
set nu                  " Show line numbers
set wrap                " Enable line wrapping
set paste               " Enable paste mode to prevent auto-indenting
set laststatus=2        " Always show the status line

" NERDTree configuration
nnoremap <S-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$', '\.DS_Store$']

" Save and quit shortcuts
nnoremap <C-x> :q!<CR>  " Quit without saving
nnoremap <C-o> :w<CR>   " Save file

" FZF integration
nnoremap <C-t> :FZF<CR>
nnoremap <C-f> :Rg<CR>  " Ripgrep search

" Toggle line numbers
nnoremap <S-l> :set invnu<CR>

" Toggle line wrap
nnoremap <S-w> :set invwrap<CR>

" Toggle syntax highlighting
nnoremap <S-s>
             \ : if exists("syntax_on") <BAR>
             \    syntax off <BAR>
             \ else <BAR>  
             \    syntax enable <BAR>
             \ endif<CR>

" Buffer management
nnoremap <F5> :buffers<CR>:buffer<Space>
noremap <C-n> :bn<CR>   " Next buffer
noremap <C-p> :bp<CR>   " Previous buffer

" Additional useful settings
set showcmd             " Show incomplete commands
set wildmenu            " Enhanced command line completion
set incsearch           " Incremental search
set hlsearch            " Highlight search results
set ignorecase          " Case insensitive search
set smartcase           " Case sensitive when uppercase present
set autoindent          " Auto indent new lines
set tabstop=4           " Tab width
set shiftwidth=4        " Indent width
set expandtab           " Use spaces instead of tabs
set mouse=a             " Enable mouse support
set encoding=utf-8      " Set encoding to UTF-8
set clipboard=unnamedplus " Use system clipboard
set cursorline          " Highlight current line
set number relativenumber " Hybrid line numbers

" Clear search highlighting with Escape
nnoremap <Esc> :nohlsearch<CR>

" Quick split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Color scheme (uncomment to enable)
" colorscheme gruvbox
" set background=dark

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
