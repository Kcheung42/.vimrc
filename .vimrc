execute pathogen#infect()

" basic
:set number
:set mouse=n
:set shiftwidth=4
:set showcmd
:set tabstop=4
:set background=dark
syntax on
colorscheme gruvbox

" Toggle Relative Number Index
function! NumberToggle()
	 if(&relativenumber == 1)
		 set number
	else
		 set relativenumber
	endif
		endfunc
noremap <C-n> :call NumberToggle()<cr>
noremap <C-z> :vertical resize 85 <ENTER>
filetype plugin on

" Navigating betwen splts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Navigating Scroll up and down
nnoremap <C-K> <C-U>
nnoremap <C-J> <C-D>

" Automatically Start Nerd Tree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Vim Status Lines
let g:airline_powerline_fonts = 1
let g:airline_theme='light'

" Set Special Tab and End of line char
set listchars=eol:¬,tab:▸\ 
:set list

" Paste Toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

