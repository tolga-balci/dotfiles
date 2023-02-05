"--- DISPLAY
set title
set ruler
set number
set guioptions=T
"set wrap
"set hlsearch
set wildmenu
set incsearch "highlight search results as you type
set smartcase
set cursorline
" set cursorcolumn
syntax enable


"--- FILETYPES AND TYPING
filetype on
filetype plugin on
filetype indent on
set wrap
set tabstop=4


"--- THEMES AND VISIBILITY
set background=light
hi Search guibg=peru guifg=wheat
hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi Visual term=reverse cterm=reverse guibg=Grey


"execute pathogen#infect()

"--- AutoCommands: Markdown
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

"--- EasyAlign Plugin
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"--- WSL Yank Support

let s:clip = '/mnt/c/Windows/system32/clip.exe'

if executable(s:clip)
    augroup WSLYank
           autocmd!
           autocmd TextYankPost * if v:event.operator==# 'y' | call system(s:clip, @0) | endif
           augrıyo END
endif

 

"--- This should be the last line:
se mouse+=a
