call plug#begin()
  if has("nvim") " LSP
    Plug 'neovim/nvim-lspconfig'
  endif
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
  Plug 'honza/vim-snippets' " coc snippets

  if (has("nvim")) " telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
  endif
  call plug#end()
