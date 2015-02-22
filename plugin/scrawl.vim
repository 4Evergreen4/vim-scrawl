" ============================================================================
" File: scrawl.vim
" Description: vim plugin which provides a customizable scratch buffer
" Maintainer: Evergreen
" Version: 0.1.0
" Last Change: 26 January, 2015
" License: Vim License
" ============================================================================

" SECTION: Script initialization {{{1
if exists("g:loaded_scrawl") || &cp || v:version < 700
    finish
endif

let g:loaded_scrawl = 1

" Function: s:initVariable() function {{{2
" This function is used to initialise a given variable to a given value. The
" variable is only initialised if it does not exist prior
"
" Args:
" var: the name of the var to be initialised
" value: the value to initialise var to
"
" Returns:
" 1 if the var is set, 0 otherwise
function! s:initVariable(var, value)
    if !exists(a:var)
        exec 'let ' . a:var . ' = ' . "'" . substitute(a:value, "'", "''", "g") . "'"
        return 1
    endif
    return 0
endfunction
" }}}

" SECTION: Initialize variables (options) {{{2
call s:initVariable('g:scrawl_show_line_numbers', 1)
call s:initVariable('g:scrawl_split_direction', 0)
call s:initVariable('g:scrawl_window_height', 25)
call s:initVariable('g:scrawl_window_width', 25)
" }}}
" }}}

" vim: set sw=4 sts=4 et fdm=marker:
