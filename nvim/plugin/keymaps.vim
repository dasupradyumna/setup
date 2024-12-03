"--------------------------------------- CUSTOM USER KEYMAPS --------------------------------------"

"----------------------------------- GENERAL ----------------------------------"

map <Space> <NOP>
map <BS> <NOP>
noremap! <C-C> <Esc>
vnoremap <C-C> <Esc>
noremap ; :
noremap : ;

"----------------------------------- EDITING ----------------------------------"

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap gh K
nnoremap K i<CR><Esc>
nnoremap U <C-R>
inoremap <Left> <C-G>U<Left>
inoremap <Right> <C-G>U<Right>
imap <C-H> <Left>
imap <C-J> <Down>
imap <C-K> <Up>
imap <C-L> <Right>

" system clipboard
nnoremap <Leader>cc "+y
nnoremap <Leader>cx "+d
nnoremap <Leader>cp "+p
nnoremap <Leader>cP "+P
xnoremap <Leader>cc "+y
xnoremap <Leader>cx "+d
xnoremap <Leader>cp "+p
xnoremap <Leader>cP "+P

"--------------------------------- NAVIGATION ---------------------------------"

nnoremap <C-U> <C-U>zz
nnoremap <C-D> <C-D>zz
nnoremap H 5zh
nnoremap L 5zl
nnoremap 0 ^
nnoremap ^ 0

" search
nnoremap n nzz
nnoremap N Nzz
nnoremap <Leader>, <Cmd>nohlsearch<CR>

"----------------------------------- WINDOWS ----------------------------------"

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" vertical and horizontal resizing
nnoremap <C-Up> <C-W>+
nnoremap <C-Down> <C-W>-
nnoremap <C-Left> <C-W><
nnoremap <C-Right> <C-W>>

"------------------------------- TOGGLE-SETTINGS ------------------------------"

nnoremap <Leader><Leader>d <Cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>
nnoremap <Leader><Leader>s <Cmd>call util#toggle_spell()<CR>

"--------------------------------- DIAGNOSTICS --------------------------------"

nnoremap gn <Cmd>lua vim.diagnostic.goto_next { float = false }<CR>
nnoremap gN <Cmd>lua vim.diagnostic.goto_prev { float = false }<CR>
nnoremap go <Cmd>lua vim.diagnostic.open_float()<CR>

"---------------------------------- RIP-GREP ----------------------------------"
" REMOVE: after ripgrep.nvim reaches feature parity with autoload/grep.vim

nnoremap <Leader>ss <Cmd>call grep#search()<CR>
nnoremap <Leader>sf <Cmd>call grep#search_filetype()<CR>
nnoremap <Leader>sd <Cmd>call grep#search_directory()<CR>
