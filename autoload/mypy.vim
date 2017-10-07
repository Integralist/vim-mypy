" The autoload script allows the function to be defined
" without loading it, until, the user actually calls it
"
" This helps reduce the startup time for Vim
" As plugin/mypy.vim only contains simple logic/mappings
" All functional aspects of code is defined in autoload
"
" Add mypy# prefix to any calls for ExecuteMyPy
" Vim will search in this autoload directory for the function
" Note: the function defined here also needs the mypy# prefix

function mypy#ExecuteMyPy()
  silent !clear
  execute "!mypy --ignore-missing-imports --follow-imports=skip " . bufname("%")
endfunction
