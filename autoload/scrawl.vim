if exists("g:loaded_scrawl_autoload")
    finish
endif

let g:loaded_scrawl_autoload = 1

" Function: scrawl#setBufOptions() {{{
" Set the various options for a throw away buffer, and set user options
function! scrawl#setBufOptions()
    setlocal noswapfile
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal foldcolumn=0
    setlocal nobuflisted
    setlocal nospell

    if g:scrawl_show_line_numbers
        setlocal nu
    else
        setlocal nonu
    endif
endfunction
" }}}
" vim: set sw=4 sts=4 et fdm=marker:
