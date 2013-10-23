" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on
let g:nerdtree_tabs_open_on_console_startup=1

" switch on line numbering
set number

" syntax highlighting
syntax on

" map cut & paste to what they bloody should be
vnoremap <C-c> "+y
vnoremap <C-x> "+x
map <C-v> "+gP

" sane text files
set fileformat=unix
set encoding=utf-8

" sane editing
set tabstop=4
set shiftwidth=4
set softtabstop=4

" convert all typed tabs to spaces
set expandtab

"autocompletion with ctrl+space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

map <f12> :!ctags -R .<cr>

" Folding Stuffs
set foldmethod=marker

" Who doesn't like autoindent?
set autoindent

" Enable mouse support in console
set mouse=a

" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

"{{{Look and Feel

" Favorite Color Scheme
if has("gui_running")
   " Remove Toolbar
   set guioptions-=T
   set guioptions-=r                                         " turn off GUI right scrollbar
   set guioptions-=L
   set guifont=Ubuntu\ Mono\ 11
   let g:molokai_original=1
   colorscheme molokai
    " Override some highlight settings (turn off stupid italics in Molokai)
    highlight ColorColumn  guibg=#2c2d27
    highlight CursorLine   guibg=#2c2d27
    highlight CursorColumn guibg=#2c2d27
    highlight DiffText     gui=none
    highlight Macro        gui=none
    highlight SpecialKey   gui=none
    highlight Special      gui=none
    highlight StorageClass gui=none
    highlight Tag          gui=none
else
   "colorscheme metacosm
   colorscheme vibrantink
endif

set nobackup nowritebackup noswapfile autoread
set scrolloff=10
"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" }}}

" Fuzzy-search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" Highlight search results
nnoremap <F3> :set hlsearch!<CR>

au BufNewFile,BufRead *.php set filetype=php

" TagList options
let Tlist_Use_Right_Window = 1
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
let tlist_sql_settings = 'sql;P:package;t:table'

" Right margin
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(121,999),",")

" VCS mappings
nmap <Leader>sa <Plug>VCSAdd 
nmap <Leader>sn <Plug>VCSAnnotate 
nmap <Leader>sc <Plug>VCSCommit 
nmap <Leader>sd <Plug>VCSDiff 
nmap <Leader>sg <Plug>VCSGotoOriginal 
nmap <Leader>sG <Plug>VCSGotoOriginal! 
nmap <Leader>sl <Plug>VCSLog 
nmap <Leader>sL <Plug>VCSLock 
nmap <Leader>sr <Plug>VCSReview 
nmap <Leader>ss <Plug>VCSStatus
nmap <Leader>su <Plug>VCSUpdate 
nmap <Leader>sU <Plug>VCSUnlock 
nmap <Leader>sv <Plug>VCSVimDiff
