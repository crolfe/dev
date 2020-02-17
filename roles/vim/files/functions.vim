" format JSON in Visual mode
map <Leader>j !python -m json.tool<CR>

" show unsaved changes
command Diff :w !diff % -
