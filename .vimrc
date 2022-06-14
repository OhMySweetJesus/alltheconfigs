" SET LEADER KEY
let mapleader = ","

" REMAP KEYS
nmap <leader>w :w!<cr>
nmap <leader>c :Calendar
nmap <leader>2 :sp
nmap <leader>3 :vsp
nmap <leader>t :!h:\Programs\MikTex\texmfs\install\miktex\bin\x64\pdflatex.exe H:\SCHEDULING\newPrograms.tex
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nmap <leader>tt :NERDTreeToggle<CR>
map <leader>k :bd<cr>
map <leader>b :!H:\Programs\tcc\tcc.exe H:\Programs\CS50\TestingSound\main.c H:\Programs\CS50\TestingSound\WndProc.c && main.exe
map <leader>m :!H:\Programs\CodeBlocks\MinGW\bin\mingw32-make.exe && main

map <C-c><C-s> :%s/<C-r><C-w>.*/<C-r><C-w> 

" Macros
let @d = '{}kISUN /mondajj}kIMON /tuesdjj}kITUE /wednjj}kIWED /thursjj}kITHU /frijj}kIFRI /saturjj}kISAT ' "Add 3 letter day-tags to each line

let @i = 'ojojo/mondayOjo/tuesdayOjo/wednesdayOjo/thursdayOjo/fridayOjo/saturdaOjo' "Add newlines above and below each week day


" Smart Parens
"
""inoremap "<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

" Compatibility
set nocompatible


" UI
set relativenumber

colorscheme OceanicNext

filetype plugin on
filetype indent on

syntax on

" History
set history=500

" Fix Windows clipboard usage
set clipboard=unnamed

" Fix searching
set ignorecase
set hlsearch


set tabstop=4
set shiftwidth=4
set expandtab

" VimTeX Configuration
let g:vimtex_view_method = 'open'

" Change directory to file that is open
set autochdir
