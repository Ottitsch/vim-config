" Automatically delete backup files after saving
autocmd BufWritePost * silent! execute '!cmd /c "pushd ' . expand('%:p:h') . ' >nul && del /q *~ *.un~ >nul 2>&1 && popd >nul"'

autocmd InsertEnter * set paste
autocmd InsertLeave * set nopaste

