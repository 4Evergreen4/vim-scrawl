" ============================================================================
" File: scrawl.vim
" Description: vim plugin which provides a customizable scratch buffer
" Maintainer: Evergreen
" Version: 1.0.0
" Last Change: May 6th, 2015
" License: Vim License
" ============================================================================

" ------------------------ Script Initialization ------------------------- {{{

if exists("g:loaded_scrawl") || &cp || v:version < 700
    finish
endif

let g:loaded_scrawl = 1

" ------------------------ END Script Initialization --------------------- }}}

" ------------------------ Settings -------------------------------------- {{{

let g:scrawl_buffer_name = get(g:, 'g:scrawl_buffer_name', '__Scrawl__')
let g:scrawl_filetype = get(g:, 'g:scrawl_filetype', 'text')
let g:scrawl_split_direction = get(g:, 'g:scrawl_split_direction', 0)
let g:scrawl_window_size = get(g:, 'g:scrawl_window_size', 0)

" ------------------------ END Settings ---------------------------------- }}}

" ------------------------ Command Definitions --------------------------- {{{

command -nargs=0 ScrawlSplitToggle call scrawl#toggleWindow()
command -nargs=0 ScrawlBufferToggle call scrawl#toggleBuffer()
command -nargs=0 ScrawlBuffer call scrawl#openScrawlBuffer()
command -nargs=0 ScrawlClose call scrawl#closeScrawlWindow()
command -nargs=0 ScrawlSplit call scrawl#openScrawlWindow()

" ------------------------ END Command Definitions ----------------------- }}}

" vim: set sw=4 sts=4 et fdm=marker:
