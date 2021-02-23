if has('gui_running')
    " set winaltkey=no
    " set macmeta
    noremap <silent><c-tab> :tabprev<CR>
    inoremap <silent><c-tab> <ESC>:tabprev<CR>
endif
