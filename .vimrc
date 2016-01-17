"Pathogen Start
execute pathogen#infect()

syntax on
set background=dark
colorscheme monokai
set background=dark
colorscheme hybrid

" set relative line numbers
set relativenumber


" Use spaces instead of tabs
set expandtab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""
" => Search Settings
"""""""""""""""""""
map <space> /
map <c-space> ?
set incsearch

runtime macros/matchit.vim


"""""""""""""""""""
" => NERDTree Options
"""""""""""""""""""


" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

"Show hidden files in NerdTree
"let NERDTreeShowHidden=1
"
""autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p



"paste toggle indent
:set pastetoggle=<F3>


filetype plugin on
filetype indent on

set encoding=utf8


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
" Remember info about open buffers on close
set viminfo^=%

