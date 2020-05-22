""""""""""""""""""""""""""""""
" vim-move
""""""""""""""""""""""""""""""
" Ctrl + k/j to move up/down
let g:move_key_modifier = 'C'

""""""""""""""""""""""""""""""
" Ale
""""""""""""""""""""""""""""""
let python_highlight_all = 1
let b:ale_linters = {
\   'ansible': ['ansible_lint'],
\   'javascript': ['eslint', 'vue'],
\   'python': ['flake8'],
\   'go': ['errcheck'],
\}
let b:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'go': ['gofmt'],
\   'javascript': ['eslint', 'prettier'],
\   'python': ['black'],
\}

" lint/fix only on save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1


""""""""""""""""""""""""""""""
" vim-terraform
""""""""""""""""""""""""""""""
let g:terraform_align=1

""""""""""""""""""""""""""""""
" NerdTree
""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


""""""""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""""""""
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options

" Based off of https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!venv/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
set grepprg=rg\ --vimgrep

" use ctrl + f to search with the power of rg + fzf
map <C-f> :Find<cr>


"""""""""""""""""""""""""""
" rust.vim
"""""""""""""""""""""""""""
let g:rustfmt_autosave = 1
