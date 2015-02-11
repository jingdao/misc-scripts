set nu
set nowrap
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set showcmd
set smartindent
set foldmethod=syntax
set complete=.
colorscheme monokai
colorscheme skittles_dark
nnoremap ; :
map <C-Up> 5<Up>
map <C-Down> 5<Down>
imap <C-Up> <Up><Up><Up><Up><Up>
imap <C-Down> <Down><Down><Down><Down><Down>
imap <Home> <C-O>^
imap <C-V> <C-O>p
imap <C-U> <C-O>u
imap <C-R> <C-O><C-R>
map <S-Left> gT
map <S-Right> gt
map <A-Up> <C-y>
map <A-Down> <C-e>
map <A-Left> zh
map <A-Right> zl
map <Home> ^
imap <C-@> <C-P>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap <C-J> <CR><BS><Esc>ko
map _ :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>
map - :call Comment()<CR>
let g:netrw_sort_options="i"
let g:netrw_sort_sequence="[\/]$,*"

func OpenFileWindow()
	:Texplore
	:call feedkeys("i")
	:tabnext
	:quit
endfunc

func Comment()
if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'java' || &filetype == 'javascript' || &filetype == 'cs' 
	s/^/\/\//
	:nohlsearch
else
	s/^/#/
	:nohlsearch
endif
endfunc


autocmd VimEnter * call OpenFileWindow()
autocmd InsertEnter * setlocal foldmethod=manual
autocmd InsertLeave * setlocal foldmethod=syntax
