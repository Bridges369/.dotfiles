let g:python3_host_prog = 'C:/Python310/python.exe' " python host provider
let g:coc_global_extensions = [ 'coc-snippets', 'coc-pairs', 'coc-solargraph', 'coc-prettier', 'coc-rust-analyzer' ] " coc extensions
" AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" NERDTree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
"" - Git
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
" Devicons
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
" Syntax-Highlight
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
" ALE
let g:ale_linters = {
  \ 'ruby': ['eslint'],
  \}
let g:ale_fixers = {
  \'*': ['trim_whitespace']}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '窱'
let g:ale_sign_warning = ''
" Snippets
let g:coc_snippet_next = '<tab>'
" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
