if !executable("mypy")
  echom "The mypy executable was not found in your runtime path"
else
  command! Mypy call mypy#ExecuteMyPy()

  " Following mapping is only applied to current buffer
  nnoremap <buffer> <localleader>mp :call mypy#ExecuteMyPy()<cr>
endif
