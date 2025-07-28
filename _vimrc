" English
language messages en_US

" Automatically delete backup files after saving
autocmd BufWritePost * silent! execute '!cmd /c "pushd ' . expand('%:p:h') . ' >nul && del /q *~ *.un~ >nul 2>&1 && popd >nul"'

" Enable paste only when pressing Shift+I
nnoremap I :set paste<CR>I
autocmd InsertLeave * set nopaste

" Enable working backspace in insert mode
set backspace=indent,eol,start

" Make Shift+Tab insert 4 Space in both insert and insert paste mode
set pastetoggle=<S-Tab>
inoremap <S-Tab> <Space><Space><Space><Space>

augroup PasteTabSpaces
  autocmd!
  autocmd OptionSet paste call PasteTabHandler(v:option_new, v:option_old)
augroup END

function! PasteTabHandler(new, old) abort
  " only act when weΓÇÖve just gone from paste=1 ΓåÆ paste=0
  if a:new == 0 && a:old == 1
    " insert four spaces
    call feedkeys("    ", 'n')
    " turn paste back on
    set paste
  endif
endfunction
