" ============================
" = 	Yu Fu || .vimrc 	 = 
" ============================


" ------------------------------------------------------------
" <Theme>

 colorscheme Base2Tone_SeaDark

" ------------------------------------------------------------
" <Vim-plug Plugin Manager>

call plug#begin('~/.vim/plugged')

	Plug 'https://github.com/scrooloose/nerdtree'

call plug#end()



" ------------------------------------------------------------
" <NERDTree>

" Remap Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" ------------------------------------------------------------
" <KeyBinding>

" [\rr] resource vimrc
map <leader>rr :source ~/.vimrc<CR><C-f>

" [] remove search highlight
nnoremap <C-f> :noh<cr>

" set Ctrl-Shift to navigate horizontally faster
nnoremap <PageUp> 10j
nnoremap <PageDown> 10k

" Set tab to clear line and indent
nnoremap <Tab> ddO

" Block tab in visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" allow more natural split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



" ------------------------------------------------------------
" <Config Functionality>

syntax enable		" Turn on syntax highlights
set confirm			" Compt to save before exit
set hidden			" leave hidden buffers open
set history=100		" increase vim stored history
set autoread		" Reload files changed outside vim
set re=1			" Use a non-broken regex engine for syntax highlighting
set nocompatible	" ward off unexpected things that distro might have made + sanely reset options when re-sourcing .vimrc
set wildmenu		" Better command-line completion set showcmd			" show partial commands in the last line of the screen set nomodeline		" Modelines allow insecure options to be set. (Should look into this in future) set confirm			" Ask to save unsaved work upon closing set visualbell		" Use visual bell instead of beeping when doing something wrong
" set mouse=a			" enable mouse usage (Lol....)

" set indentation settings
filetype indent plugin on	" Attempt to determine the type of a file based on name/content. Allow intelligent auto indenting
set tabstop=4			" Set tab size to 4
set shiftwidth=4
let g:indent_guides_auto_colors = 0
hi IndentGuideOdd ctermbg=black			" set custom indent colors (Requires plugin)
hi IndentGuideOdd ctermbg=darkgrey		" set custom indent colours
hi Normal ctermbg=none					" Set ctermbg to none to stop gnome-terminal colour scheme overide


" my UI configurations
set rnu					" relative numberLine
set nu					" set absolute numberLine
set gcr=a:blinkon0		" Disable cursor blink
set timeoutlen=200	" alter time vim waits for you to complete a sequence of chars
set hlsearch		" highlight text being searched
set so=15			" always have space below and abover cursor (set scrolloff=#)



" ------------------------------------------------------------
" <Function>
