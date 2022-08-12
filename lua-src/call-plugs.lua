vim.cmd([[
call plug#begin()
  Plug 'neovim/nvim-lspconfig'
  "Plug 'autozimu/LanguageClient-neovim', {
  ""  \ 'branch': 'next',
  ""  \ 'do': 'bash install.sh',

  ""  \ }
"{{ Languages }}
" >> Rust
  Plug 'rust-lang/rust.vim'
  Plug 'simrat39/rust-tools.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'mfussenegger/nvim-dap'
"{{ others }}
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
"{{ Telescope }}
call plug#begin()
  Plug 'neovim/nvim-lspconfig'
  "Plug 'autozimu/LanguageClient-neovim', {
  ""  \ 'branch': 'next',
  ""  \ 'do': 'bash install.sh',

  ""  \ }
"{{ Languages }}
" >> Rust
  Plug 'rust-lang/rust.vim'
  Plug 'simrat39/rust-tools.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'mfussenegger/nvim-dap'
"{{ others }}
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
"{{ Telescope }}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  call plug#end()
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
call plug#end()
]])
