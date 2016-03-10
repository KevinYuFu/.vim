
" <KeyBinding> "

" [Ctrl n] Toggle number line appearance
nnoremap <C-n> :call NumberToggle()<cr>

" [\rr] resource vimrc
map <leader>rr :source ~/.vimrc<CR><C-f>

" [] remove search highlight
nnoremap <C-f> :noh<cr>

" set Ctrl-Shift to navigate horizontally faster
nnoremap <PageUp> 10j
nnoremap <PageDown> 10k

" </KeyBinding> "

" Config Functionality
syntax enable		" Turn on syntax highlights
set hidden			" leave hidden buffers open
set history=100		" increase vim stored history
set autoread		" Reload files changed outside vim
set re=1			" Use a non-broken regex engine for syntax highlighting
set nocompatible	" ward off unexpected things that distro might have made + sanely reset options when re-sourcing .vimrc
set wildmenu		" Better command-line completion
set showcmd			" show partial commands in the last line of the screen
set nomodeline		" Modelines allow insecure options to be set. (Should look into this in future)
set confirm			" Ask to save unsaved work upon closing
set visualbell		" Use visual bell instead of beeping when doing something wrong
" set mouse=a			" enable mouse usage (Lol....)

" set indentation settings
filetype indent plugin on	" Attempt to determine the type of a file based on name/content. Allow intelligent auto indenting
set tabstop=4			" Set tab size to 4
set shiftwidth=4
let g:indent_guides_auto_colors = 0
hi IndentGuideOdd ctermbg=black			" set custom indent colors (Requires plugin)
hi IndentGuideOdd ctermbg=darkgrey		" set custom indent colours

" set vim theme
colorscheme elda

" my UI configurations
set rnu					" relative numberLine
"set nu					" set absolute numberLine
set gcr=a:blinkon0		" Disable cursor blink
set timeoutlen=200	" alter time vim waits for you to complete a sequence of chars
set hlsearch		" highlight text being searched
set so=15			" always have space below and abover cursor (set scrolloff=#)


" function:

"	Toggle - relative/absolute line number
function! NumberToggle()
	if(&nu == 0)
		"set nornu
		set nu
	else
		set nonu
		"set rnu
	endif
endfunc

