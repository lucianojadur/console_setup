" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'    "python syntax plugin
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'

call vundle#end()            " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" For plug-ins to load correctly.
filetype plugin indent on


set nolist
set wrap

"""" Text indenting/spacing 
set cindent   
set autoindent
set textwidth=80    
set shiftwidth=4 	    " Use two spaces
set tabstop=4       	" Tabs use two spaces
"set expandtab      	" Tabs convert to spaces


let python_highlight_all=1

"""" Interface
set laststatus=2		" Status bar
set showcmd				" Command line
set noshowmode
set title 				" Set the window’s title with file currently being edited

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark


"""" Search & display
set number				" Show line numbers
set encoding=utf-8 		" Encoding
set hlsearch			" Highlight matching search patterns
set incsearch 			" Enable incremental search
set ignorecase			" Include matching uppercase words with lowercase search term
set smartcase 			"Include only uppercase words with uppercase search term
set cursorline


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'    " python syntax plugin
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'			"lightline (command line) setting
Plug 'bluz71/vim-nightfly-guicolors'	"nightfly color scheme
call plug#end()




"""""""""""""""""
""""COLOR SETTINGS
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE

"set termguicolors |
"colorscheme nightfly	"NIGHTFLY THEME
"let g:lightline = {'colorscheme': 'nightfly'}
"let g:nightflyCursorColor = 1
"let nightflyUnderlineMatchParen = 1

hi Comment cterm=italic


set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


so ~/.vim/plugins.vim
