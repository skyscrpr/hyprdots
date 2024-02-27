call plug#begin()
Plug 'ThePrimeagen/vim-be-good'
Plug 'vimwiki/vimwiki'
call plug#end()

command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

" Setup for vimwiki
"
" This file should be sourced from your .vimrc
"
"
" Set or override all/any options for personal wiki.
let wiki = {
\           'path': '~/vimwiki/',
\           'path_html': '~/vimwiki/HTML/',
\           'auto_export': 0,
\           'index': 'home',
\           'syntax': 'markdown',
\           'ext': '.md',
\           'auto_toc': 1,
\           'maxhi': 1,
\           'nested_syntaxes': {'python': 'python', 'js': 'javascript', 'c++': 'cpp'},
\           'list_margin': -1
\           }

" Make wiki the default vimwiki setup
let g:vimwiki_list = [wiki]
" When opening a directory containing a file with this name and default wiki
" extention, assume it is a vimwiki
let g:vimwiki_dir_link = ''
" Only treat .md files under a path in vimwiki_list as wiki files
let g:vimwiki_global_ext = 0
