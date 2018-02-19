" @version 0.1.2

" Set spell check to US English for now.
"set spell spelllang=en_us
set nospell

hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=white ctermbg=red
set autoread

set nocompatible              " be iMproved, required
filetype off                  " required

set tabpagemax=100

" Emphasize white space characters,
" like space's,tab's,etc.
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" http://stackoverflow.com/questions/815548/how-do-i-tidy-up-an-html-files-indentation-in-vi
" :set paste
" Note that in vim 7.4 the html tags html, head, body, and some others are not indented by default.
" This makes sense, as nearly all content in an html file falls under those tags.
" If you really want to, you can get those tags to be indented like so:
let g:html_indent_inctags = "html,body,head,tbody,script"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" REQUIRED: let Vundle manage Vundle,
Plugin 'gmarik/Vundle.vim'

" List to install and maintain by Vundle
"
"Plugin 'w0rp/ale'

Plugin 'vim-syntastic/syntastic'

"let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['eslint']

" Reducing amount of installed unused plugins
"
" Docker syntax
"Plugin 'ekalinin/Dockerfile.vim'

" CTAGS

"Plugin 'szw/vim-tags'
"let g:vim_tags_auto_generate = 1

" TEXT WRAPPING
"

"Plugin 'reedes/vim-pencil'

" GIT
"

Bundle 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'


" Markdown
"

" Javascript plugins
"
Plugin 'jbgutierrez/vim-babel'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'heavenshell/vim-jsdoc'

" Javascript settings

" @for `mxw/vim-jsx`
" By default, JSX syntax highlighting and indenting will be enabled only for
" files with the .jsx extension. If you would like JSX in .js files, add
let g:jsx_ext_required = 0
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal nospell

autocmd FileType js UltiSnipsAddFiletypes html

" Formatting js using `prettier'
"
"  Prettier is an opinionated code formatter with support for:
"
"  JavaScript, including ES2017
"  JSX
"  Flow
"  TypeScript
"  CSS, LESS, and SCSS
"  JSON
"  GraphQL
"
" https://github.com/prettier/prettier
autocmd FileType javascript set formatprg=prettier\ --stdin

" Utils

" Miscellaneous auto-load Vim scripts
Plugin 'xolox/vim-misc'
" Session manager - depends on 'xolox/vim-misc'
"Plugin 'xolox/vim-session'
let g:session_autoload = 'no'

" SNIPPETS
"

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" ELM
"

"Plugin 'lambdatoast/elm.vim.git'


" HTML
"

"Plugin 'https://github.com/Valloric/MatchTagAlways.git'
"Plugin 'https://github.com/Townk/vim-autoclose'
"Plugin 'https://github.com/vim-scripts/closetag.vim'

" C lanuguage

"Plugin 'https://github.com/WolfgangMehner/c-support'

" MISC
"

"Plugin 'edsono/vim-matchit'
"Plugin 'godlygeek/tabular'
"Plugin 'ervandew/supertab'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'mattn/webapi-vim'

Plugin 'mileszs/ack.vim'

if executable('ag')
        let g:ackprg = 'ag --vimgrep'
        "let g:ackprg = 'ag --nogroup --nocolor --column'
endif

"Plugin 'rking/ag.vim'
"
"Plugin 'fatih/vim-go'

"Bundle 'Mr-Oss/tagbar.git'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'kovisoft/slimv'
Bundle 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'

"Plugin 'kchmck/vim-coffee-script'
" To get standard two-space indentation in CoffeeScript files
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab


" REQURED: All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" TODO: VUNDLE USAGE DOCS !!!
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set expandtab
set number
set nowrap

set nowritebackup
set noswapfile
set nobackup

set hlsearch
set ignorecase
set smartcase

" save all
nmap <leader>s :wa<CR>
" quit
nmap <leader>q :qa!<CR>
" quit and save all
nmap <leader>x :wa<CR>:qa!<CR>

" Ctrl+p in insert mode pastes last yanked register
imap <C-P> <C-R>"
" λ char keybinding
imap <C-l> <C-k>l*

" on move down maximize split
" on move up maximize split
nmap <leader>w <C-w>w<C-w>_


" NEERDTree toggle
nmap <leader>t :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Quit with :Q
command -nargs=0 Quit :qa!

" format Json with python json tool command
command! -range -nargs=0 -bar JsonTool <line1>,<line2>!python -m json.tool

" vim-airline appear all the time
set laststatus=2

" easy rainbow for lisp ?
let g:lisp_rainbow = 1

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
                    \ if line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif
" Remember info about open buffers on close
set viminfo^=%

"Always show current position
set ruler

" History
set history=5000

" Every time the user issues a :w command,
" Vim will automatically remove all
" trailing whitespace before saving.
autocmd BufWritePre * :%s/\s\+$//e

" toggle paste mode... but no indication...
set pastetoggle=<leader>p
" Hight light column 72
set cc=80

" enable mouse
set mouse=r

" Improve syntax highlighting & formating "
"

au BufRead,BufNewFile *.md set filetype=markdown

au BufNewFile,BufRead .babelrc set filetype=javascript
au BufNewFile,BufRead .eslintrc set filetype=javascript
au BufNewFile,BufRead *.ejs.js set filetype=javascript

" associate *.boot with lisp filetype
au BufRead,BufNewFile *.boot set filetype=clojure
au BufRead,BufNewFile *.hy set filetype lisp
au BufRead,BufNewFile *.dt set filetype lisp
au BufNewFile,BufRead *.phn set filetype=clojure
au BufNewFile,BufRead *.cljc set filetype=clojure

" custom: cljabel
au BufNewFile,BufRead *.cljb set filetype=clojure

"
" YML
"
"
au BufNewFile,BufRead *.yml set filetype=yaml
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal nospell

au BufNewFile,BufRead *.ejs set filetype=html
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal nospell

"set t_Co=256
"let g:solarized_termcolors=256
set background=dark
"colorscheme solarized
