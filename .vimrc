"--- DISPLAY
set title
set ruler
set number relativenumber
set guioptions=T
set wrap
"set hlsearch
set wildmenu
set incsearch "highlight search results as you type
set hidden
set autowrite
set smartcase
set cursorline
set splitbelow
set splitright
set nocompatible
set clipboard=unnamed "allow copy-paste outside of vim
set showcmd
set selection=exclusive "exclude newline character in selection
syntax enable

"--- MOVEMENT
"nnoremap j gj  "--Move down by visual line
"nnoremap k gk  "--Move up by visual line

"--- FILETYPES AND TYPING
filetype on
filetype plugin on
filetype indent on
set scrolloff=5

" TO BE USED AS PYTHON IDE
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set textwidth=79 
set expandtab
set autoindent

" DELETE ALL TRAILING WHITESPACES ON EXIT (HANDY FOR PYTHON EDITING)
" autocmd BufWritePre %s/\s\+$//e

"--- THEMES AND VISIBILITY
set background=light
hi Search guibg=peru guifg=wheat
hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi Visual term=reverse cterm=reverse guibg=Grey

"--- AUTOCOMMANDS: MARKDOWN, JSON, PYTHON
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
au BufNewFile,BufRead *.json setf json
"au BufNewFile,BufRead *.py 
set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

autocmd TextChanged, TextChangedI * silent write

"--- FORCE LOAD ALL PLUGINS
packloadall
let g:table_mode_corner='|'


"--- EasyAlign Plugin
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"--- WSL YANK SUPPORT
let s:clip = '/mnt/c/Windows/system32/clip.exe'
if executable(s:clip)
    augroup WSLYank
           autocmd!
           autocmd TextYankPost * if v:event.operator==# 'y' | call system(s:clip, @0) | endif
           augrÄ±yo END
endif

"--- MAP KEYS
map <F2> o```<CR><CR>```<Esc>o<Esc>kkkA<Space>
map <F3> O```<Esc>jjI```<Esc>kkA<Space>
map <F4> ~w
map <F5> <Esc>:TableModeToggle<Return>

"--- MACROS
let @w='0€ýaf(ldt/i.€ýaF]i|5000'

"--- This should be the last line:
se mouse+=a
