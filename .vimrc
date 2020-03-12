set number
set backspace=indent,eol,start
filetype plugin indent on
syntax on
colorscheme sublime
set expandtab
set tabstop=4


" AUTOLOAD TEMPLATES BASED ON EXT
" ------------------------------
"  Copied from a tutorial on https://shapeshed.com/vim-templates/
"  What this block does:
"   - An if statement checks that the vim installation has the autocmd feature.
"   - A group is created called templates.
"   - An autocmd is created to be run each time the “starting to edit a non-existent file” event happens (BufNewFile).
"   - If the file has a defined extension then read the contents of ~/.vim/templates/skeleton.sh and inserted it at line 0.
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py
  augroup END
endif
