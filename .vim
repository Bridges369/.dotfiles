call plug#begin()
  " lsp config
  "if has("nvim")
  ""  Plug 'neovim/nvim-lspconfig'
  "endif
  "Plug 'autozimu/LanguageClient-neovim', {
  ""  \ 'branch': 'next',
  ""  \ 'do': 'bash install.sh',
  ""  \ }
  "
  Plug 'arcticicestudio/nord-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'|
    \ Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'dense-analysis/ale'
  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
  " Plug 'ervandew/supertab'
call plug#end()
let g:python3_host_prog = 'C:/Python310/python.exe'
" __ Global Sets _____________________________________
set clipboard=unnamedplus
syntax on            " Enable syntax highlight
set nu               " Enable line numbers
set tabstop=2        " Show existing tab with 4 spaces widt
set softtabstop=2    " Show existing tab with 4 spaces width
set shiftwidth=2     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=9      " Minimum number of lines to keep above and below the cursor
" set colorcolumn=100  " Draws a line at the given line to keep aware of the line size
set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any
" __ Themes __________________________________________
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme nord
if (has("nvim")) "Transparent background. Only for nvim
    highlight Normal guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
endif
" ____ AirLine _______________________________________
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" ____ NERDTreeToggle ________________________________
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" ____ Devicons ______________________________________
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
" change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
" change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = ''
" ______ Git-Plugin __________________________________
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
  \ 'Modified'  :'',
  \ 'Staged'    :'',
  \ 'Untracked' :'留',
  \ 'Renamed'   :'',
  \ 'Unmerged'  :'',
  \ 'Deleted'   :'',
  \ 'Dirty'     :'',
  \ 'Ignored'   :'☒',
  \ 'Clean'     :'✔︎',
  \ 'Unknown'   :'?',
  \ }
" ______ Syntax-Highlight ____________________________
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
" __ Remaps __________________________________________
nmap <C-a> :NERDTreeToggle<CR>
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-A-f> :NERDTreeFind<CR>
" ____ Buffers _______________________________________
nmap ta :badd new buffer
nmap td :bdelete<CR>
nmap tl :buffer #<CR>
nmap tr :bprevious<CR>
nmap ty :bnext<CR>
" ____ Navigation ____________________________________
nmap <A-c> :bNext<CR>
nmap <A-d> :bdelete<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" ____ File __________________________________________
map <C-w>w :w!<CR>
map <C-q> :q!<CR>
map <C-w>q :wq!<CR>
" ______ Manage ______________________________________

" __ Lets ____________________________________________
" let g:SuperTabDefaultCompletionType = "<C-n>"
" __ autocmd _________________________________________
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

augroup autosave
    autocmd!
    autocmd BufRead * if &filetype == "" | setlocal ft=text | endif
    autocmd FileType * autocmd TextChangedI <buffer> if &readonly == 0 | silent write | endif
augroup END
" __ ALE _____________________________________________
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \}
let g:ale_fixers = {
  \'*': ['trim_whitespace']}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '窱'
let g:ale_sign_warning = ''
" __ CoC _____________________________________________
