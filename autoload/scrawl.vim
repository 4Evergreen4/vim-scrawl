" ============================================================================
" File: scrawl.vim
" Description: vim plugin which provides a customizable scratch buffer
" Maintainer: Evergreen
" Version: 0.1.0
" Last Change: May 5th, 2015
" License: Vim License
" ============================================================================

" ----------------------- Boilerplate ------------------------------------ {{{

if exists("g:loaded_scrawl_autoload")
    finish
endif

let g:loaded_scrawl_autoload = 1

" ----------------------- END Boilerpalyer ------------------------------- }}}

" ----------------------- Functions -------------------------------------- {{{

" Function: s:SetBufOptions()
" Set the various options for the scrawl buffer
function! s:SetBufOptions()
    setlocal noswapfile
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal foldcolumn=0
    setlocal nobuflisted
    setlocal nospell
endfunction

" ----------------------- END Functions ---------------------------------- }}}

" vim: set sw=4 sts=4 et fdm=marker:
