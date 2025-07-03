" Automatically delete backup files after saving
autocmd BufWritePost * silent! execute '!cmd /c "pushd ' . expand('%:p:h') . ' >nul && del /q *~ *.un~ >nul 2>&1 && popd >nul"'

" Enable paste only when pressing Shift+I
nnoremap I :set paste<CR>I
autocmd InsertLeave * set nopaste

" Enable working backspace in insert mode
set backspace=indent,eol,start
