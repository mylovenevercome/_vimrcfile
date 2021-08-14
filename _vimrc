syntax on


call plug#begin('~/vimfiles/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
call plug#end()

colorscheme dracula

syntax enable
set background=dark

set rtp+=~tabnine-vim
set encoding=utf-8
set backspace=2
set laststatus =2
set clipboard=unnamed
set nu
set rnu

let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf='pdflatex -syntex=1 -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat="pdf"

let g:Tex_ViewRule_pdf = 'okular --unique'
function! SyncTexForward()
let execstr = "silent !okular --unique %:p:r.pdf\#src:".line(".")."%:p &"
exec execstr
endfunction
nmap f :call SyncTexForward()



if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 13
	elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI
		set guioptions -=m
		set guioptions -=T
	endif 
endif

