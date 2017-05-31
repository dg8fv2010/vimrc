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
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
set ai			" auto indenting
set ruler		" show the cursor position
set hlsearch		" hightlight the last searched term
set history=1000	" keep 1000 lines of heitory
set number			" show line number
set numberwidth=5
set mouse=a		" enable mouse usage
set showmatch
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set backspace=2 " enhance backspace
set completeopt-=preview

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Highlight current line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline cursorcolumn


" molokai theme
"Plugin 'tomasr/molokai'
"syntax on
"let g:molokai_original = 1
"let g:rehash256 = 1

" Draculatheme
Plugin 'dracula/vim'
syntax on
color dracula

" vim-color-solarized
"syntax enable
"if has('gui_sunning')
"	set background=light
"else
"	set background=dark
"endif
"colorscheme solarized


" jedi
Plugin 'davidhalter/jedi-vim'

" supertab
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType="context"

" Nerdtree
Plugin 'scrooloose/nerdtree'
" autocmd vimenter * NERDTree "open a NERDTree automatically when vim starts up

" Nerdtree tabs
Plugin 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup=1

" Nerdtree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" syntastic
Plugin 'scrooloose/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
" let g:syntastic_python_checkers = []
" let g:syntastic_python_pylint_exec = '/usr/local/bin/pylint'
" let g:syntastic_debug = 3


" vim-auto-save
Plugin '907th/vim-auto-save'
"let g:auto_save=0
"let g:auto_save_silent=1
"let g:auto_save_events = ["InsertLeave", "TextChanged"]

" pylint
Plugin 'PyCQA/pylint'
let g:syntastic_python_checkers=['pylint']

" vim-airline
Plugin 'vim-airline/vim-airline'

" delimitMate
Plugin 'Raimondi/delimitMate'

" tagbar
Plugin 'majutsushi/tagbar'

" taghighlight
" Plugin 'TagHighlight'

" tabular
Plugin 'godlygeek/tabular'
let g:tagbar_autofocus=1
let g_tagbar_autopreview=1
autocmd VimEnter * nested :call tagbar#autoopen(1)

"nerdcommenter
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1

" ctrlp
Plugin 'kien/ctrlp.vim'

" html5
Plugin 'othree/html5.vim'

" minibufexpl
Plugin 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" not working
" indentLine
" Plugin 'Yggdroot/indentLine'
" let g:indentLine_char = '¦'

" not working
" vim-indent-guides
Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
"let g:indent_guides_guide_size = 1
"let g:indent_guides_auto_colors = 1
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
