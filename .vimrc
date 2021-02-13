set encoding=UTF-8
set nocompatible
set number
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set wildmenu
set showcmd
syntax on
set hlsearch
set ignorecase
set backspace=indent,eol,start
set nostartofline
set ruler
set confirm
set visualbell
set mouse=a
set cmdheight=2
set hls is ic

"""""""""""""""""""""""""""""""""""
colorscheme tempus_autumn
"""""""""""""""""""""""""""""""""""


"######### BEGIN KEY-BINDING #########

" ##Copying to system Clipboard
vnoremap <C-c> "+y
"map <C-v> "+p

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Move Lines
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Enter Goyo
nnoremap <leader><ENTER> :Goyo<CR>

" Theme Switch
map <F1> :colorscheme gruvbox<CR>
map <F2> :colorscheme tempus_autumn<CR>
"map <F3> :colorscheme hybrid_reverse<CR>
"map <F4> :colorscheme PaperColor<CR>
"map <F5> :colorscheme spacegray<CR>

"########## END KEY-BINDING ############
filetype indent plugin on


set statusline=%<%f\ %h%m%r%=%-14.(line=%l,col=%c%V,totlin=%L%)\%h%m%r%=%-40(,bytval=0x%B,%n%Y%)\%P

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_statusline_ontop=0
let g:ycm_autoclose_preview_window_after_completion=1

"########### LaTeX Config ###########
"let g:livepreview_previewer = 'evince' "# Change 'evince' to your own pdf viewer
"let g:livepreview_cursorhold_recompile = 0
"autocmd Filetype tex setl updatetime=1
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1

" ########### Goyo Settings ##########
function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nocursorline
    Limelight
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set cursorline
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" ########### LimeLight Config #########
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" ########### Markdown #################
autocmd BufRead,BufNewFile {*.markdown,*.mdown,*.mkdn,*.md,*.mkd,*.mdwn,*.mdtxt,*.mdtext,*.text} set filetype=markdown
autocmd FileType markdown setlocal syntax=off

" ################PLUG###############
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline-themes'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'vim-scripts/indentpython.vim'
Plug 'junegunn/goyo.vim'
Plug 'vifm/vifm.vim'
Plug 'junegunn/limelight.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'

" Color-schemes

Plug 'morhetz/gruvbox' 
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ajh17/Spacegray.vim'
Plug 'azadkuh/vim-cmus'
" Plugin for LaTex
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

" #######VUNDLE#######
call vundle#begin('~/.vim/plugged')

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
"#Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

call vundle#end()

""""""""""""""""""""""""""
"   ___           _      "
"  |_  |         | |     "
"    | | __ _ ___| |__   "
"    | |/ _` / __| '_ \  "
"/\__/ / (_| \__ \ | | | "
"\____/ \__,_|___/_| |_| "
"                        "
""""""""""""""""""""""""""
